class ClassRoom < ApplicationRecord
    belongs_to :teacher
    has_one :gradebook
    has_many :students
    has_many :assignments, through: :gradebook

    def add_student(student_obj)
        if self.size > 0
            self.students << student_obj
            self.size = size - 1
        end
    end

    def is_full
        full = false
        if self.size <= 0
           full = true
        end
        full
    end
end
