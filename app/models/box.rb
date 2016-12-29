class Box < ApplicationRecord
  has_many :pills
  belongs_to :user
end
