class Movie < ApplicationRecord
  include Search
  after_create :create_medium

  has_one :medium, as: :reviewable, dependent: :destroy
  has_many :celebrity_media, through: :medium
  has_many :celebrities, through: :celebrity_media
  mount_uploader :poster, PosterUploader

  scope :create_desc, ->{order name: :desc}
  scope :create_top_new, ->{order release_date: :desc}
  scope :create_top_score, ->{order critic_score: :desc}
  scope :top_new_show, ->{limit Settings.movies.top}
  scope :top_score_show, ->{limit Settings.movies.top}
  scope :top_new_more, ->{offset Settings.movies.top}
  scope :top_score_more, ->{offset Settings.movies.top}

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
end
