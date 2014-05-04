class Car < ActiveRecord::Base
	has_many :reviews, dependent: :destroy
	validates_presence_of :brand
	validates_presence_of :model
	validates_presence_of :rentaldates
	validates_presence_of :price
	validates_presence_of :location
	validates_presence_of :mileage
end
