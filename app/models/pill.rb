class Pill < ApplicationRecord
  belongs_to :box
  scope :by_slot, -> (slot_number) {where(slot: slot_number)}
  SLOT = ['First', 'Second', 'Third', 'Fourth', 'Fifth', 'Sixth', 'Seventh']


  validates :slot, presence: true
end
