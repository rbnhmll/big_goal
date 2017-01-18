class CreateProfiles < ActiveRecord::Migration[5.0]
  def change
    create_table :profiles do |t|
      t.string :name
      t.string :nickname
      t.boolean :include_custom_messages

      t.timestamps
    end
  end
end
