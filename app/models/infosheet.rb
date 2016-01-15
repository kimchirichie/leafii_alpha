class Infosheet < ActiveRecord::Base
	validates :name, :email, :phone, presence: true
	serialize :other_data
end
