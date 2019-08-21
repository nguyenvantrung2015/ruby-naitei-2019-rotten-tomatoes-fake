class Season < ApplicationRecord
  belongs_to :tv_show
  has_many :episodes, dependent: :destroy

  mount_uploader :poster, SeasonPosterUploader

  ATTR = %i(info poster season_number).freeze

  validates :info, presence: true,
            length: {maximum: Settings.seasons.info_max_length}
  validate :unique_season_number

  celebrities_list = lambda do |season_id|
    Celebrity.where(id: includes(episodes: [medium: [celebrity_media: :celebrity]]).where(id: season_id)
                            .pluck("celebrities.id").uniq)
  end
  scope :celebrities_list, celebrities_list

  def score user_role
    arr = episodes.map{|e| e.score(user_role)}.reject(&:zero?)
    return 0 if arr.empty?
    arr.reduce(:+) / arr.size
  end

  def load_release_year
    date = episodes.where("episodes.episode_number = 1").pluck("episodes.release_date")
    year = date[0]
  end

  def load_director
    director = episodes.joins(medium: [celebrity_media: :celebrity]).where("celebrity_media.role = 1").pluck("celebrities.name").uniq
    return director unless director.empty?
  end

  private

  def unique_season_number
    return unless tv_show.seasons.where(season_number: season_number).exists?
    errors.add :season_number, I18n.t("admin.seasons.duplicate")
  end
end
