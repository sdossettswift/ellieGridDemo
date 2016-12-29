class ChangeTimeToDatetime < ActiveRecord::Migration[5.0]
  def change
    remove_column :pills, :time
    add_column :pills, :time, :datetime
  end
end
