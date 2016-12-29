class RemoveSlotFromPills < ActiveRecord::Migration[5.0]
  def change
      remove_column :pills, :slot
      add_column :pills, :slot, :string
  end
end
