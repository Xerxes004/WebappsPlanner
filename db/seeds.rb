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

webapps = Course.new
webapps.name = 'WebApps'
webapps.num_cred = 3
webapps.course_id = 'CS-3220'
webapps.save!

compiler = Course.new
compiler.name = 'Compiler'
compiler.num_cred = 3
compiler.course_id = 'CS-3510'
compiler.save!

data_structures = Course.new
data_structures.name = 'Data Structures'
data_structures.num_cred = 3
data_structures.course_id = 'CS-3410'
data_structures.save!

algorithms = Course.new
algorithms.name = 'Algorithms'
algorithms.num_cred = 3
algorithms.course_id = 'CS-2210'
algorithms.save!






