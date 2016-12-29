class AddUserToBox < ActiveRecord::Migration[5.0]
  def change
    add_column :boxes, :user_id, :integer
  end
end
