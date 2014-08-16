class Car < ActiveRecord::Base
	has_many :car_items
	has_many :reviews, dependent: :destroy
	has_many :pictures, :dependent => :destroy
	belongs_to :user
	belongs_to :brand
	validates_presence_of :brand_id
	validates_presence_of :model
	validates_presence_of :price
	validates_presence_of :location
	validates_presence_of :mileage
	validates :price, numericality: {greater_than_or_equal_to: 100}
	has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  	validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
   
  	before_destroy :ensure_not_referenced_by_any_car_item

	def self.search(search)
	  search_condition = "%" + search + "%"
	  find(:all, :conditions => ['location LIKE ? OR remarks LIKE ?', search_condition, search_condition])
	end

	private

		def ensure_not_referenced_by_any_car_item
			if car_items.empty?
				return true
			else
				errors.add(:base, 'car_items present')
				return false
			end
		end

end
