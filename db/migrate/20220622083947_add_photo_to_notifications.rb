class AddPhotoToNotifications < ActiveRecord::Migration[6.1]
  def change
    add_column :notifications, :photo, :string
  end
end
