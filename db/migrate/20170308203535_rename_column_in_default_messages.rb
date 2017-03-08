class RenameColumnInDefaultMessages < ActiveRecord::Migration[5.0]
  def change
    rename_column :default_messages, :admin_id, :user_id
  end
end
