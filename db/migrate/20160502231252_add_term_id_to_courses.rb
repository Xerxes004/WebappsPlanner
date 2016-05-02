class AddTermIdToCourses < ActiveRecord::Migration
  def change
    add_column :courses, :term_id, :string
  end
end
