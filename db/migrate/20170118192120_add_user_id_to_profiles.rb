class AddAssociationsToTables < ActiveRecord::Migration[5.0]
  def up
  	add_column :profiles, :user_id, :integer
  	add_column :goals, :user_id, :integer
  	add_column :default_messages, :admin_id, :integer
  	add_column :custom_messages, :user_id, :integer
  end
  def down
  	remove_column :profiles, :user_id
  	remove_column :goals, :user_id
  	remove_column :default_messages, :admin_id
  	remove_column :custom_messages, :user_id
  end
end
