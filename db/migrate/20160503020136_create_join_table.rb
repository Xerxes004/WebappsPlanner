class CreateJoinTable < ActiveRecord::Migration
  def change
    create_join_table :terms, :courses do |t|
      # t.index [:term_id, :course_id]
      # t.index [:course_id, :term_id]
    end
  end
end
