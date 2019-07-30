class Episode < ApplicationRecord
  after_create :create_medium

  belongs_to :season
  has_one :medium, as: :reviewable, dependent: :destroy

  ATTR = %i(info release_date episode_number).freeze

  validates :info, presence: true,
    length: {maximum: Settings.episodes.info_max_length}
  validate :unique_episode_number

  scope :season, ->(season_id){where(season_id: season_id)}
  scope :season_critic_score, ->(id){season(id).average(:critic_score)}
  scope :season_audien_score, ->(id){season(id).average(:audience_score)}

  private

  def unique_episode_number
    return unless season.episodes.where(episode_number: episode_number).exists?
    errors.add :episode_number, I18n.t(".duplicate")
  end

  def create_medium
    Medium.create_instance self
  end
end
