class RemoveDescriptionFromPlans < ActiveRecord::Migration
  def change
    remove_column :plans, :description, :string
  end
end
