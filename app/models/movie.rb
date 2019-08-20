class Movie < ApplicationRecord
  include Search
  after_create :create_associated_medium

  has_one :medium, as: :reviewable, dependent: :destroy
  has_many :celebrity_media, through: :medium
  has_many :celebrities, through: :celebrity_media
  mount_uploader :poster, PosterUploader

  scope :create_desc, ->{order updated_at: :desc}
  scope :create_top_score, ->{sort_by(&:critic_score).reverse}

  scope :load_all, (
  lambda do
    joins(:celebrities).all.select("movies.id, "\
    "celebrities.name, movies.name as film_name,movies.release_date")
  end)

  scope :list_search, ->(movies_id){find(movies_id)}

  ATTR = %i(name release_date critic_score audience_score info poster).freeze
  validates :name, presence: true,
    length: {maximum: Settings.movies.name_max_length}
  validates :info, presence: true,
    length: {maximum: Settings.movies.info_max_length}

  def critic_score
    medium.reviews
          .joins(:user).where(users: {role: :critic}).average(:score) || 0
  end

  def audience_score
    medium.reviews
          .joins(:user).where.not(users: {role: :critic}).average(:score) || 0
  end

  private

  def create_associated_medium
    create_medium
  end
end
