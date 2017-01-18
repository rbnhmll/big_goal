class CreateCustomMessages < ActiveRecord::Migration[5.0]
  def change
    create_table :custom_messages do |t|
      t.string :message

      t.timestamps
    end
  end
end
