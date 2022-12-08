# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#https://stackoverflow.com/questions/12418584/seeding-users-with-devise-in-ruby-on-rails

user0 = User.new
user0.first_name = "ADMINISTRATOR"
user0.last_name = ""
user0.uid = ""
user0.grad_year = ""
user0.major = ""
user0.minor = ""
user0.phone_number = ""
user0.professional_track = ""
user0.email = 'admin@gmail.com'
user0.password = 'asdf1234'
user0.password_confirmation = 'asdf1234'
user0.save!

user1 = User.new
user1.first_name = "Mark"
user1.last_name = "Marshall"
user1.grad_year = "2020"
user1.uid = "1"
user1.major = "ABME"
user1.minor = ""
user1.phone_number = "1111111101"
user1.professional_track = "N/A"
user1.email = 'mark@gmail.com'
user1.password = 'password'
user1.password_confirmation = 'password'
user1.save!

user2 = User.new
user2.first_name = "Christine"
user2.last_name = "Chapel"
user2.grad_year = "2021"
user2.uid = "2"
user2.major = "ABME"
user2.minor = ""
user2.phone_number = "1111111102"
user2.professional_track = "PhD"
user2.email = 'christine@gmail.com'
user2.password = 'password'
user2.password_confirmation = 'password'
user2.save!

user3 = User.new
user3.first_name = "Benjamin"
user3.last_name = "Tackett"
user3.grad_year = "2022"
user3.uid = "3"
user3.major = "ACCT"
user3.minor = ""
user3.phone_number = "1111111103"
user3.professional_track = "PhD"
user3.email = 'benjamin@gmail.com'
user3.password = 'password'
user3.password_confirmation = 'password'
user3.save!

user4 = User.new
user4.first_name = "Geraldine"
user4.last_name = "Goodacre"
user4.grad_year = "2023"
user4.uid = "4"
user4.major = "ACCT"
user4.minor = ""
user4.phone_number = "1111111104"
user4.professional_track = "N/A"
user4.email = 'geraldine@gmail.com'
user4.password = 'password'
user4.password_confirmation = 'password'
user4.save!

user5 = User.new
user5.first_name = "Roland"
user5.last_name = "Netherton"
user5.grad_year = "2024"
user5.uid = "5"
user5.major = "ADEV"
user5.minor = ""
user5.phone_number = "1111111105"
user5.professional_track = "Pre-Dental"
user5.email = 'roland@gmail.com'
user5.password = 'password'
user5.password_confirmation = 'password'
user5.save!

user6 = User.new
user6.first_name = "Adele"
user6.last_name = "Hackman"
user6.grad_year = "2025"
user6.uid = "6"
user6.major = "ADEV"
user6.minor = "ZOOL"
user6.phone_number = "1111111106"
user6.professional_track = "N/A"
user6.email = 'adele@gmail.com'
user6.password = 'password'
user6.password_confirmation = 'password'
user6.save!

user7 = User.new
user7.first_name = "Darryl"
user7.last_name = "Patel"
user7.grad_year = "2026"
user7.uid = "7"
user7.major = "AEGD"
user7.minor = "ZOOL"
user7.phone_number = "1111111107"
user7.professional_track = "Pre-Dental"
user7.email = 'darryl@gmail.com'
user7.password = 'password'
user7.password_confirmation = 'password'
user7.save!

user8 = User.new
user8.first_name = "Ella"
user8.last_name = "Tebbit"
user8.grad_year = "2020"
user8.uid = "8"
user8.major = "AEGD"
user8.minor = ""
user8.phone_number = "1111111108"
user8.professional_track = "N/A"
user8.email = 'ella@gmail.com'
user8.password = 'password'
user8.password_confirmation = 'password'
user8.save!

user9 = User.new
user9.first_name = "James"
user9.last_name = "Kirby"
user9.grad_year = "2021"
user9.uid = "9"
user9.major = "AERO"
user9.minor = ""
user9.phone_number = "1111111109"
user9.professional_track = "N/A"
user9.email = 'james@gmail.com'
user9.password = 'password'
user9.password_confirmation = 'password'
user9.save!

user10 = User.new
user10.first_name = "Tanya"
user10.last_name = "Keaton"
user10.grad_year = "2022"
user10.uid = "10"
user10.major = "AERO"
user10.minor = "MATH"
user10.phone_number = "1111111110"
user10.professional_track = "N/A"
user10.email = 'tanya@gmail.com'
user10.password = 'password'
user10.password_confirmation = 'password'
user10.save!

user11 = User.new
user11.first_name = "Aubrey"
user11.last_name = "Coyer"
user11.grad_year = "2023"
user11.uid = "11"
user11.major = "AGBL"
user11.minor = ""
user11.phone_number = "1111111111"
user11.professional_track = "Pre-PT (Physical Therapy)"
user11.email = 'aubrey@gmail.com'
user11.password = 'password'
user11.password_confirmation = 'password'
user11.save!

user12 = User.new
user12.first_name = "Grace"
user12.last_name = "Earsley"
user12.grad_year = "2024"
user12.uid = "12"
user12.major = "AGBL"
user12.minor = "MUSC"
user12.phone_number = "1111111112"
user12.professional_track = "N/A"
user12.email = 'grace@gmail.com'
user12.password = 'password'
user12.password_confirmation = 'password'
user12.save!

user13 = User.new
user13.first_name = "Thomas"
user13.last_name = "Hamill"
user13.grad_year = "2025"
user13.uid = "13"
user13.major = "AGBU"
user13.minor = "ZOOL"
user13.phone_number = "1111111113"
user13.professional_track = "N/A"
user13.email = 'thomas@gmail.com'
user13.password = 'password'
user13.password_confirmation = 'password'
user13.save!

user14 = User.new
user14.first_name = "Elizabeth"
user14.last_name = "Niell"
user14.grad_year = "2026"
user14.uid = "14"
user14.major = "AGBU"
user14.minor = ""
user14.phone_number = "1111111114"
user14.professional_track = "N/A"
user14.email = 'elizabeth@gmail.com'
user14.password = 'password'
user14.password_confirmation = 'password'
user14.save!

user15 = User.new
user15.first_name = "Adam"
user15.last_name = "Newbry"
user15.grad_year = "2023"
user15.uid = "15"
user15.major = "CSCE"
user15.minor = "STAT"
user15.phone_number = "1111111115"
user15.professional_track = "PhD"
user15.email = 'adam@gmail.com'
user15.password = 'password'
user15.password_confirmation = 'password'
user15.save!

#Group.create!([
#    {year: "2022", group_name: "Group1"},
#])

#GroupToUser.create!([
#    {uid:"123456789",group_id:"1"},
#    {uid:"223456789",group_id:"1"},
#    {uid:"333456789",group_id:"1"},
#    {uid:"444456789",group_id:"1"},
#])