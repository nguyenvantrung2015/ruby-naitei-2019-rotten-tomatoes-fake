class TvShow < ApplicationRecord
  has_many :seasons, dependent: :destroy

  mount_uploader :poster, TvShowPosterUploader

  scope :create_desc, ->{order(created_at: :desc)}

  ATTR = %i(name info poster).freeze

  validates :name, presence: true,
    length: {maximum: Settings.tvshows.name_max_length}
  validates :info, presence: true,
    length: {maximum: Settings.tvshows.info_max_length}

  def critic_score
    arr = self.seasons.map(&:critic_score).reject{|x| x==0}
    arr ? arr.inject{|sum, score| sum+score} / arr.size : 0
  end

  def audience_score
    arr = self.seasons.map(&:audience_score).reject{|x| x==0}
    arr ? arr.inject{|sum, score| sum+score} / arr.size : 0
  end
end
