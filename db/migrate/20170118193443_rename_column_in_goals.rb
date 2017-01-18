class RenameColumnInGoals < ActiveRecord::Migration[5.0]
  def change
  	rename_column :goals, :dealine, :deadline
  end
end
