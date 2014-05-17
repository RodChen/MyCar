class CarItem < ActiveRecord::Base
  belongs_to :car
  belongs_to :lease
end
