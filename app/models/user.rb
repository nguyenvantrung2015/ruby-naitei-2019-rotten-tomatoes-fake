class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
    :rememberable, :validatable
  attr_accessor :remember_token
  has_many :news, dependent: :destroy
  has_many :reviews, dependent: :destroy

  enum role: {admin: 0, moderator: 1, critic: 2, normal: 3}

  scope :role, ->(role){where role: role}

  before_save :downcase_email

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  ATTR = %i(name email role password password_confirmation).freeze

  validates :name,
    presence: true,
    length: {maximum: Settings.users_name_max_length}

  def reviewed? reviewable
    reviewable.reviews.where(user_id: id).exists?
  end

  private

  def downcase_email
    email.downcase!
  end
end
