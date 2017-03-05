class AddCurrentGoalToGoals < ActiveRecord::Migration[5.0]
  def change
    add_column :goals, :current_goal, :boolean
  end
end
