class Car < ActiveRecord::Base
	has_many :car_items
	has_many :reviews, dependent: :destroy
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

	BRAND_TYPE = ["HONDA",
				"SUZUKI",
				"MAZDA",
				"MITSUBISHI",
				"DAEWOOD",
				"HUNDAI",
				"TOYOTA",
				"NISSAN",
				"FORD",
				"BUICK",
				"HUNDAI",
				"Alfa Romeo",
				"AUDI",
				"BMW",
				"Citroen",
				"Ferrari",
				"Fiat",
				"Jaguar",
				"Lancia",
				"Land Rover",
				"Maserati",
				"Mercedes Benz",
				"MINI",
				"OPEL",
				"PEUGEOT",
				"PORSCHE",
				"RENAULT",
				"SAAB",
				"SKODA",
				"SMART",
				"VOLKSWAGEN",
				"VOLKSWAGEN",
				"VOLVO",
				"DAIHATSU",
				"ISUZU",
				"Infiniti",
				"LEXUS",
				"SUBARU",
				"Cadillac",
				"Chrysler",
				"JEEP",
				"KIA",
				"Ssangyong",
				"Hyundai",
				"Hyundai",
				"Proton"
	]

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
