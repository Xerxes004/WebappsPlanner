class AddPlanIdToTerms < ActiveRecord::Migration
  def change
    add_column :terms, :plan_id, :integer
  end
end
