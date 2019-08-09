class TvShow < ApplicationRecord
  has_many :seasons, dependent: :destroy
  has_many :episodes, through: :seasons

  mount_uploader :poster, TvShowPosterUploader

  scope :create_desc, ->{order updated_at: :desc}

  scope :create_top_score, ->{sort_by(&:critic_score).reverse}

  scope :search_by_name, ->(keyword){where("name LIKE ?", "%#{keyword}%")}

  search_by_release_year = lambda do |keyword|
    joins(:episodes).where("season_number = 1
                            AND episode_number = 1
                            AND extract(year from release_date) = ?", keyword)
  end

  scope :search_by_release_year, search_by_release_year

  ATTR = %i(name info poster).freeze

  validates :name, presence: true,
            length: {maximum: Settings.tvshows.name_max_length}
  validates :info, presence: true,
            length: {maximum: Settings.tvshows.info_max_length}

  def critic_score
    arr = seasons.map(&:critic_score).reject(&:zero?)
    arr ? arr.reduce{|sum, score| sum + score} / arr.size : 0
  end

  def audience_score
    arr = seasons.map(&:audience_score).reject(&:zero?)
    arr ? arr.reduce{|sum, score| sum + score} / arr.size : 0
  end
end
