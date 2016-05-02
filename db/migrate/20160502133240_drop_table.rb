class DropTable < ActiveRecord::Migration
  def change
  	drop_table :add_description_to_plans
  end
end
