class CreateNotifications < ActiveRecord::Migration[6.1]
  def change
    create_table :notifications do |t|
      t.string :content
      t.boolean :read
      t.string :url

      t.timestamps
    end
  end
end
