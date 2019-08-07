class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :validatable

  has_many :news, dependent: :destroy
  has_many :reviews, dependent: :destroy

  enum role: {admin: 0, moderator: 1, critic: 2, normal: 3}

  ATTR = %i(name email role password password_confirmation).freeze
  validates :name,
    presence: true,
    length: {maximum: Settings.users_name_max_length}
end
