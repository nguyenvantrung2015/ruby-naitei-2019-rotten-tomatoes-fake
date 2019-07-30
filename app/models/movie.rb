class Movie < ApplicationRecord
  after_create :create_medium

  has_one :medium, as: :reviewable, dependent: :destroy
  mount_uploader :poster, PosterUploader

  scope :create_desc, ->{order name: :desc}

  scope :create_top_new, ->{order release_date: :desc}
  scope :create_top_score, ->{order critic_score: :desc}
  scope :top_new_show, ->{limit Settings.movies.top}
  scope :top_score_show, ->{limit Settings.movies.top}
  scope :top_new_more, ->{offset Settings.movies.top}
  scope :top_score_more, ->{offset Settings.movies.top}

  ATTR = %i(name release_date critic_score audience_score info poster).freeze

  validates :name, presence: true,
    length: {maximum: Settings.movies.name_max_length}
  validates :info, presence: true,
    length: {maximum: Settings.movies.info_max_length}

  def critic_score
    self.medium.reviews
      .joins(:user).where(users: {role: :critic}).average(:score) || 0
  end

  def audience_score
    self.medium.reviews
      .joins(:user).where.not(users: {role: :critic}).average(:score) || 0
  end

  private

  def create_medium
    Medium.create_instance self
  end
end
