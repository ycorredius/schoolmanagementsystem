class ClassRoom < ApplicationRecord
    belongs_to :teacher
    has_many :students
    belongs_to :gradebook

    def add_student(student_obj)
        if self.size > 0
            self.students << student_obj
            size = size - 1
        end
    end
end
