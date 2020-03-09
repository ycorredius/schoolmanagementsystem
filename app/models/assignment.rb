class Assignment < ApplicationRecord
    belongs_to :class_room
    has_many :gradebooks, through: 
    has_one :student_grade, through: :grade
    has_many :students, source: :grade
end
