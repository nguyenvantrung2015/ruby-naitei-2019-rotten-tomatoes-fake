class Review < ApplicationRecord
  belongs_to :user
  belongs_to :medium

  ATTR = %i(user_id medium_id content score).freeze

  scope :create_desc, ->{order created_at: :desc}
end
