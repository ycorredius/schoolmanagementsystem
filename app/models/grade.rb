class Grade < ApplicationRecord
  belongs_to :gradebook
  belongs_to :class_room
  belongs_to :assignment
  has_many :students, through: :gradebook
end
