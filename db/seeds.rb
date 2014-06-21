# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#Car.delete_all
user = User.new
user.email = 'demo1@mycar.com'
user.password = 'MyCar123456'
user.password_confirmation = 'MyCar123456'
user.save!

car1 = Car.new
car1.brand = 'Honda'
car1.model = 'CR-V'
car1.year = '2005'
car1.price = 1000
car1.location = 'Taipei'
car1.auto_transmission = true
car1.mileage = 20000
car1.color = 'white'
car1.user_id = 1
car1.rentaldates = '2014/06/15'
car1.save!
