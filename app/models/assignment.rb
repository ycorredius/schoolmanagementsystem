class Assignment < ApplicationRecord
    belongs_to :class_room
    belongs_to :teacher 
    has_many :gradebooks 
end
