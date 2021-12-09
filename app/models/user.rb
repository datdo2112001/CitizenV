class User < ApplicationRecord
	before_save { username.downcase! }
	has_secure_password
	validates :tk, presence: true
	validates :username, presence: true, length: { maximum: 10 }, uniqueness:true
	validates :status, presence: true
	validates :usercode, presence: true, uniqueness:true 
	validates :region, presence: true
	validates :password, presence: true, length: { minimum: 6 }
end
