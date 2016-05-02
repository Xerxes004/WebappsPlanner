class CreateAddDescriptionToPlans < ActiveRecord::Migration
  def change
    create_table :add_description_to_plans do |t|
      t.string :description

      t.timestamps null: false
    end
  end
end
