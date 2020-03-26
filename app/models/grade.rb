class Grade < ApplicationRecord
  belongs_to :assignment
  belongs_to :student
  belongs_to :class_room

end
