class Season < ApplicationRecord
  belongs_to :tv_show
  has_many :episodes, dependent: :destroy

  mount_uploader :poster, SeasonPosterUploader

  ATTR = %i(info poster season_number).freeze

  validates :info, presence: true,
    length: {maximum: Settings.seasons.info_max_length}
  validate :unique_season_number

  scope :tv_show, ->(tv_show_id){where tv_show_id: tv_show_id}
  scope :tv_show_critic_score, ->(id){tv_show(id)}

  def critic_score
    arr = self.episodes.map(&:critic_score).reject{|x| x==0}
    arr.inject{|sum, score| sum+score} / arr.size
  end

  def audience_score
    arr = self.episodes.map(&:audience_score).reject{|x| x==0}
    arr.inject{|sum, score| sum+score} / arr.size
  end

  private

  def unique_season_number
    return unless tv_show.seasons.where(season_number: season_number).exists?
    errors.add :season_number, I18n.t("admin.seasons.duplicate")
  end
end
