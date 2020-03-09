class Assignment < ApplicationRecord
    belongs_to :class_room
    has_many :gradebooks
    has_one :student_grade, through: :grade, source: :gradebook
    has_many :students, through: :gradebooks

    validates :title, uniqueness: true
end
