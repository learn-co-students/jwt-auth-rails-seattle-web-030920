class User < ApplicationRecord
  # attr_accessor :password
  has_secure_password
  validates :username, uniqueness: { case_sensitive: false }

  # def authenticate(pwd)
  #   if BCrypt::Password.new(self.password_digest) == pwd
  #     self
  #   else
  #     false
  #   end
  # end
end
