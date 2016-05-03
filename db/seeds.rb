# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

admin = User.new
admin.login = "admin"
admin.password = "password"
admin.password_confirmation = "password"
admin.email = "admin@email.com"
admin.is_admin = true;
admin.save!

joe = User.new
joe.login = "joe"
joe.email = "joe@cedarville.edu" 
joe.password = "password" 
joe.password_confirmation = "password" 
joe.save!

joe_plan = Plan.new
joe_plan.name = 'Joe\'s plan'
joe_plan.description = 'Joe\'s basic plan'
joe_plan.user_id = joe.id
joe_plan.save!

joe_plan_term = Term.new
joe_plan_term.plan_id = joe_plan.id
joe_plan_term.term_name = 'Fall 2016'
joe_plan_term.save!

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

algorithms = Course.new
algorithms.name = 'PACL'
algorithms.num_cred = 3
algorithms.course_id = 'PEF-1990'
algorithms.save!

algorithms = Course.new
algorithms.name = 'Politics'
algorithms.num_cred = 3
algorithms.course_id = 'GSS-1100'
algorithms.save!

algorithms = Course.new
algorithms.name = 'Databases'
algorithms.num_cred = 3
algorithms.course_id = 'CS-3610'
algorithms.save!

algorithms = Course.new
algorithms.name = 'Theology 2'
algorithms.num_cred = 3
algorithms.course_id = 'BTGE-3765'
algorithms.save!

algorithms = Course.new
algorithms.name = 'Physics 2'
algorithms.num_cred = 3
algorithms.course_id = 'PHYS-2120'
algorithms.save!


algorithms = Course.new
algorithms.name = 'US History 1'
algorithms.num_cred = 3
algorithms.course_id = 'HIST-1110'
algorithms.save!

algorithms = Course.new
algorithms.name = 'Operating Systems'
algorithms.num_cred = 3
algorithms.course_id = 'CS-3310'
algorithms.save!

algorithms = Course.new
algorithms.name = 'Theology 1'
algorithms.num_cred = 3
algorithms.course_id = 'BTGE-3755'
algorithms.save!

algorithms = Course.new
algorithms.name = 'Discrete Math'
algorithms.num_cred = 3
algorithms.course_id = 'CS-2510'
algorithms.save!

algorithms = Course.new
algorithms.name = 'Underwater Basketweaving'
algorithms.num_cred = 3
algorithms.course_id = 'ART-4990'
algorithms.save!






