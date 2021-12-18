class Citizen < ApplicationRecord

	validates :cmnd, presence: true,length: { minimum: 10 }, uniqueness:true
	validates :name, presence: true
	validates :birthday, presence: true
	validates :hometown, presence: true
	validates :paddress, presence: true
	validates :traddress, presence: true
	validates :religion, presence: true
	validates :edulevel, presence: true
	validates :job, presence: true
	validates :code, presence: true
end
