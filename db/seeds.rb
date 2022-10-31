# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#https://stackoverflow.com/questions/12418584/seeding-users-with-devise-in-ruby-on-rails
user1 = User.new
user1.first_name = "Nick"
user1.last_name = "Cheng"
user1.uid = "123456789"
user1.Major = "CPSC"
user1.phone_number = "123456789"
user1.Professional_Track = "homeless"
user1.email = 'nick@example.com'
user1.password = 'valid_password'
user1.password_confirmation = 'valid_password'
user1.save!