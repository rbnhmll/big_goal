class CreateGoals < ActiveRecord::Migration[5.0]
  def change
    create_table :goals do |t|
      t.string :goal_name
      t.datetime :dealine
      t.boolean :deadline_extended
      t.boolean :complete

      t.timestamps
    end
  end
end
