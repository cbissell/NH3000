class User < ActiveRecord::Base
  attr_accessible :name, :email, :startDate, :officeLocation, :computerType, :department
  has_secure_password

  before_save { |user| user.email = email.downcase }
  before_save :create_remember_token 

  validates :name, presence: true, length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence:   true,
                    format:     { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
end