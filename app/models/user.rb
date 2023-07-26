require 'bcrypt'

class User < ActiveRecord::Base
  include BCrypt

  has_secure_password
  has_many :trips
  
  validates :username, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true
end
