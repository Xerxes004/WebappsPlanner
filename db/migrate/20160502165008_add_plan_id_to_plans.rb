class AddPlanIdToPlans < ActiveRecord::Migration
  def change
    add_column :plans, :plan_id, :integer
  end
end
