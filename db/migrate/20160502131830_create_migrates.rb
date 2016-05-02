class CreateMigrates < ActiveRecord::Migration
  def change
    create_table :migrates do |t|
      t.string :AddDescriptionToPlans
      t.string :description

      t.timestamps null: false
    end
  end
end
