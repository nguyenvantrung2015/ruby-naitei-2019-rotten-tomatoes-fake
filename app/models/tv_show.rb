class TvShow < ApplicationRecord
  has_many :seasons, dependent: :destroy
  has_many :episodes, through: :seasons
  has_many :medium, through: :episodes
  has_many :celebrity_media, through: :medium
  has_many :celebrities, through: :celebrity_media

  mount_uploader :poster, TvShowPosterUploader

  scope :create_desc, ->{order(created_at: :desc)}

  scope :search_by_name, ->(keyword){where("name LIKE ?", "%#{keyword}%")}

  search_by_release_year = lambda do |keyword|
    joins(:episodes).where("season_number = 1
                            AND episode_number = 1
                            AND extract(year from release_date) = ?", keyword)
  end
  scope :search_by_release_year, search_by_release_year

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
end
