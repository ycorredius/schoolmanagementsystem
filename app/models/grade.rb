class Grade < ApplicationRecord
  belongs_to :student
  belongs_to :class_room
  belongs_to :assignment
end
