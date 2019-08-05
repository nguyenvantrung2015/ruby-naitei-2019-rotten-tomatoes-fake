class User < ApplicationRecord
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
  validates :email,
    presence: true,
    length: {maximum: Settings.users_email_max_length},
    format: {with: VALID_EMAIL_REGEX},
    uniqueness: {case_sensitive: false}
  has_secure_password
  validates :password,
    length: {minimum: Settings.users_password_min_length},
    allow_nil: true

  class << self
    def User.digest string
      min_cost = ActiveModel::SecurePassword.min_cost
      cost = min_cost ? BCrypt::Engine.MIN_COST : BCrypt::Engine.cost
      BCrypt::Password.create string, cost: cost
    end

    def User.new_token
      SecureRandom.urlsafe_base64
    end
  end

  def remember
    self.remember_token = User.new_token
    update_attributes remember_digest: User.digest(remember_token)
  end

  def authenticated? attribute, token
    digest = send "#{attribute}_digest"
    return false if digest.nil?
    BCrypt::Password.new(digest).is_password? token
  end

  def forget
    update_attributes remember_digest: nil
  end

  def reviewed? reviewable
    reviewable.reviews.where(user_id: id).exists?
  end

  private

  def downcase_email
    email.downcase!
  end
end
