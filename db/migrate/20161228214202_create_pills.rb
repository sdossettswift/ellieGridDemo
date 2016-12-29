class CreatePills < ActiveRecord::Migration[5.0]
  def change
    create_table :pills do |t|
      t.string :drug
      t.string :dose
      t.time :time
      t.integer :slot
      t.integer :box_id

      t.timestamps
    end
  end
end
