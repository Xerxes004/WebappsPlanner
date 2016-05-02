class DeletePlanIdFromPlans < ActiveRecord::Migration
  def change
  	remove_column :plans, :plan_id
  end
end
