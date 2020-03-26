class Assignment < ApplicationRecord
    belongs_to :class_room
    has_many :grades
    has_many :students, through: :class_room 
    validates :title, uniqueness: true

    def assign_to_students
        binding.pry
    end
end
