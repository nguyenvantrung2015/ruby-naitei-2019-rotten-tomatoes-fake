class Season < ApplicationRecord
  belongs_to :tv_show
  has_many :episodes, dependent: :destroy

  mount_uploader :poster, SeasonPosterUploader

  ATTR = %i(info poster season_number).freeze

  validates :info, presence: true,
    length: {maximum: Settings.seasons.info_max_length}
  validate :unique_season_number

  def critic_score
    arr = episodes.map(&:critic_score).reject(&:zero?)
    arr ? arr.reduce{|a, e| a + e} / arr.size : 0
  end

  def audience_score
    arr = episodes.map(&:audience_score).reject(&:zero?)
    arr ? arr.reduce{|a, e| a + e} / arr.size : 0
  end

  private

  def unique_season_number
    return unless tv_show.seasons.where(season_number: season_number).exists?
    errors.add :season_number, I18n.t("admin.seasons.duplicate")
  end
end
