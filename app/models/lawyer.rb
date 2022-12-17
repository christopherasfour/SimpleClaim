class Lawyer < ActiveRecord::Base
    has_many :claim
    has_secure_password
end
