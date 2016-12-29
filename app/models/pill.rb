class Pill < ApplicationRecord
  belongs_to :box
  has_many :notifications
  scope :by_slot, -> (slot_number) {where(slot: slot_number)}
  SLOT = ['First', 'Second', 'Third', 'Fourth', 'Fifth', 'Sixth', 'Seventh']

  def formatted_time
    formatted_time = time.strftime('%I:%M %p')
  end

  validates :slot, presence: true
end
