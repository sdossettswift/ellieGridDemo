class UpdateNotifications < ActiveRecord::Migration[5.0]
  def change
    remove_column :notifications, :pill_id_id
    add_column :notifications, :pill_id, :integer
  end
end
