class UpdateNotifications < ActiveRecord::Migration[5.0]
  def change
    add_column :notifications, :pill_id, :integer
  end
end
