class TvShow < ApplicationRecord
  include Search
  has_many :seasons, dependent: :destroy
  has_many :episodes, through: :seasons
  has_many :medium, through: :episodes
  has_many :celebrity_media, through: :medium
  has_many :celebrities, through: :celebrity_media

  mount_uploader :poster, TvShowPosterUploader

  scope :create_desc, ->{order(created_at: :desc)}
  scope :load_all, (
  lambda do
    joins(:celebrities).all.select("tv_shows.id, celebrities.name, "\
    "tv_shows.name as film_name, episodes.release_date")
  end
  )
  scope :list_search, ->(tvshows_id){find(tvshows_id)}

  ATTR = %i(name info poster).freeze

  validates :name, presence: true,
    length: {maximum: Settings.tvshows.name_max_length}
  validates :info, presence: true,
    length: {maximum: Settings.tvshows.info_max_length}
end
