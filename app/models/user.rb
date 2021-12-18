class User < ApplicationRecord
	has_secure_password

	validates :accountname, presence: true, uniqueness: true
	validates :password, presence: true, length: { minimum: 6 }
	validates :region, presence: true

end
