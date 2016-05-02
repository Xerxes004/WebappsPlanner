class DropMigrateTable < ActiveRecord::Migration
  def change
  	drop_table :migrates
  end
end
