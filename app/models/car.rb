class Car < ActiveRecord::Base
	has_many :reviews, dependent: :destroy
	validates_presence_of :brand
	validates_presence_of :model
	validates_presence_of :rentaldates
	validates_presence_of :price
	validates_presence_of :location
	validates_presence_of :mileage

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

end
