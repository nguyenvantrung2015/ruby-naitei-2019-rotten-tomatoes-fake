class Review < ApplicationRecord
  belongs_to :user
  belongs_to :medium

  ATTR = %i(user_id medium_id content score).freeze

  scope :create_desc, ->{order created_at: :desc}

  validates :content, presence: true
  validates :score, presence: true, inclusion: 1..10
  validate :user_reviewed

  private

  def user_reviewed
    return unless user.reviews.where(medium_id: medium.id).exists?
    errors.add :user_id, I18n.t("reviews.reviewed")
  end
end
