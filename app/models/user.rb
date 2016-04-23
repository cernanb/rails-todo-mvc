class User < ActiveRecord::Base
  validates :email, presence: true
  validates :email, uniqueness: true
  has_secure_password

  def self.find_or_create_by_omniauth(auth_hash)
    self.where(email: auth_hash["omniauth.auth"]["info"]["email"]).first_or_create do |user|
      user.password = SecureRandom.hex
    end
  end
end
