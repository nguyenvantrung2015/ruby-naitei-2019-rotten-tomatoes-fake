class Movie < ApplicationRecord
  after_create :create_associated_medium

  has_one :medium, as: :reviewable, dependent: :destroy
  mount_uploader :poster, PosterUploader

  scope :create_desc, ->{order updated_at: :desc}
  scope :create_top_score, ->{sort_by(&:critic_score).reverse}

  scope :search_by_name, ->(keyword){where("name LIKE ?", "%#{keyword}%")}
  search_by_release_year = lambda do |keyword|
    where("extract(year from release_date) = ?", keyword)
  end
  scope :search_by_release_year, search_by_release_year

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
