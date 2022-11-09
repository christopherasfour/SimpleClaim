class User < ActiveRecord::Base
  has_many :claim
  has_secure_password

  # def get_user_id()
end
