# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#
# Delete all data in a model
# Car.delete_all
user = User.new
user.email = 'demo1@mycar.com'
user.password = 'MyCar123456'
user.password_confirmation = 'MyCar123456'
user.save!

car1 = Car.new
car1.brand_id = 1
car1.model = 'CR-V'
car1.year = '2005'
car1.price = 1000
car1.location = 'Taipei'
car1.auto_transmission = true
car1.mileage = 20_000
car1.color = 'white'
car1.user_id = 1
car1.rentaldates = '2014/06/15'
car1.save!

BRAND_TYPE = [
  'HONDA',
  'SUZUKI',
  'MAZDA',
  'MITSUBISHI',
  'DAEWOOD',
  'HUNDAI',
  'TOYOTA',
  'NISSAN',
  'FORD',
  'BUICK',
  'HUNDAI',
  'Alfa Romeo',
  'AUDI',
  'BMW',
  'Citroen',
  'Ferrari',
  'Fiat',
  'Jaguar',
  'Lancia',
  'Land Rover',
  'Maserati',
  'Mercedes Benz',
  'MINI',
  'OPEL',
  'PEUGEOT',
  'PORSCHE',
  'RENAULT',
  'SAAB',
  'SKODA',
  'SMART',
  'VOLKSWAGEN',
  'VOLVO',
  'DAIHATSU',
  'ISUZU',
  'Infiniti',
  'LEXUS',
  'SUBARU',
  'Cadillac',
  'Chrysler',
  'JEEP',
  'KIA',
  'Ssangyong',
  'Hyundai',
  'Proton'
]

BRAND_TYPE.each do |name|
  item = Brand.new
  item.name = name
  item.save!
end
