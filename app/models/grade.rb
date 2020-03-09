class Grade < ApplicationRecord
  belongs_to :gradebook
  belongs_to :class_room
end
