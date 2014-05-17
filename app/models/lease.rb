class Lease < ActiveRecord::Base
	has_many :car_items, dependent: :destroy
end
