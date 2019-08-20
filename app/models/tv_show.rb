class TvShow < ApplicationRecord
  include Search
  has_many :seasons, dependent: :destroy
  has_many :episodes, through: :seasons
  has_many :medium, through: :episodes
  has_many :celebrity_media, through: :medium
  has_many :celebrities, through: :celebrity_media

  mount_uploader :poster, TvShowPosterUploader

  scope :create_desc, ->{order(created_at: :desc)}
  scope :create_top_score, ->{sort_by(&:critic_score).reverse}
  scope :load_all, (
  lambda do
    joins(:celebrities).all.select("tv_shows.id, celebrities.name, "\
    "tv_shows.name as film_name, episodes.release_date")
  end
  )
  scope :list_search, ->(tvshows_id){find(tvshows_id)}

  search_by_celebrity = lambda do |keyword|
    joins(:celebrities).where("celebrities.name LIKE ?", "%#{keyword}%")
  end
  scope :search_by_celebrity, search_by_celebrity

  search_by_any = lambda do |key|
    search_by_name(key) | search_by_release_year(key) | search_by_celebrity(key)
  end
  scope :search_by_any, search_by_any

  ATTR = %i(name info poster).freeze

  validates :name, presence: true,
    length: {maximum: Settings.tvshows.name_max_length}
  validates :info, presence: true,
    length: {maximum: Settings.tvshows.info_max_length}

  def critic_score
    arr = seasons.map(&:critic_score).reject(&:zero?)
    arr ? arr.reduce{|a, e| a + e} / arr.size : 0
  end

  def audience_score
    arr = seasons.map(&:audience_score).reject(&:zero?)
    arr ? arr.reduce{|a, e| a + e} / arr.size : 0
  end
end
