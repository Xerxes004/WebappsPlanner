# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user1 = User.new
user1.login = "joe"
user1.email = "joe@cedarville.edu" 
user1.password = "password" 
user1.password_confirmation = "password" 
user1.save!

user2 = User.new
user2.login = "pete"
user2.email = "pete@cedarville.edu" 
user2.password = "password" 
user2.password_confirmation = "password" 
user2.save!