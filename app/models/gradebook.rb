class Gradebook < ApplicationRecord
    belongs_to :student
    has_many :grades
    has_many :assignments
    has_many :class_rooms, through: :grades
end
