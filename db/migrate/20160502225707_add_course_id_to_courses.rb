class AddCourseIdToCourses < ActiveRecord::Migration
  def change
  	add_column :courses, :course_id, :string
  end
end
