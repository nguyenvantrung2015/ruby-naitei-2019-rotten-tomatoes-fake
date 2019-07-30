class Episode < ApplicationRecord
  after_create :create_medium

  belongs_to :season
  has_one :medium, as: :reviewable, dependent: :destroy

  ATTR = %i(info release_date episode_number).freeze

  validates :info, presence: true,
    length: {maximum: Settings.episodes.info_max_length}
  validate :unique_episode_number


  def critic_score
    self.medium.reviews
      .joins(:user).where(users: {role: :critic}).average(:score) || 0
  end

  def audience_score
    self.medium.reviews
      .joins(:user).where.not(users: {role: :critic}).average(:score) || 0
  end

  def critic_score
    self.medium.reviews
      .joins(:user).where(users: {role: :critic}).average(:score) || 0
  end

  def audience_score
    self.medium.reviews
      .joins(:user).where.not(users: {role: :critic}).average(:score) || 0
  end

  private

  def unique_episode_number
    return unless season.episodes.where(episode_number: episode_number).exists?
    errors.add :episode_number, I18n.t(".duplicate")
  end

  def create_medium
    Medium.create_instance self
  end
end
