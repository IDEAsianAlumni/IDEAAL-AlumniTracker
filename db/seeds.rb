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
user1.Major = "ABCD"
user1.phone_number = "123456789"
user1.Professional_Track = "homeless"
user1.email = 'nick@example.com'
user1.password = 'valid_password'
user1.password_confirmation = 'valid_password'
user1.save!

user2 = User.new
user2.first_name = "Sami"
user2.last_name = "Amin"
user2.uid = "223456789"
user2.Major = "DEFG"
user2.phone_number = "223456789"
user2.Professional_Track = "baker"
user2.email = 'sami@example.com'
user2.password = 'valid_password'
user2.password_confirmation = 'valid_password'
user2.save!

user3 = User.new
user3.first_name = "Yonghwan"
user3.last_name = "Kim"
user3.uid = "3333456789"
user3.Major = "GHIJ"
user3.phone_number = "333456789"
user3.Professional_Track = "acrobat"
user3.email = 'yonghwan@example.com'
user3.password = 'valid_password'
user3.password_confirmation = 'valid_password'
user3.save!

user4 = User.new
user4.first_name = "Cyrus"
user4.last_name = "Buhariwala"
user4.uid = "444456789"
user4.Major = "JKLM"
user4.phone_number = "123456789"
user4.Professional_Track = "professor"
user4.email = 'cyrus@example.com'
user4.password = 'valid_password'
user4.password_confirmation = 'valid_password'
user4.save!

Group.create!([
    {year: "2022", group_name: "Group1"},
    {year: "2022", group_name: "Group2"},
    {year: "2022", group_name: "Group3"},
    {year: "2022", group_name: "Group4"},
    {year: "2022", group_name: "Group5"}
])
GroupToUser.create!([
    {uid:"123456789",group_id:"1"},
    {uid:"223456789",group_id:"1"},
    {uid:"333456789",group_id:"1"},
    {uid:"444456789",group_id:"1"},
    {uid:"123456789",group_id:"2"},
    {uid:"333456789",group_id:"2"},
    {uid:"444456789",group_id:"2"},
    {uid:"123456789",group_id:"3"},
    {uid:"444456789",group_id:"3"}
])