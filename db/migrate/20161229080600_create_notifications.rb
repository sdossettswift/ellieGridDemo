class CreateNotifications < ActiveRecord::Migration[5.0]
  def change
    create_table :notifications do |t|
      t.datetime :date
      t.time :time
      t.string :status

      t.timestamps
    end
  end
end
