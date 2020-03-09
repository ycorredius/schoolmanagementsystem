class ClassRoom < ApplicationRecord
    has_many :grades
    belongs_to :teacher
    has_many :assignments, through: :grades
    has_many :gradebooks, through: :grades
    
    validates :subject, presence: true
    accepts_nested_attributes_for :students
    
    validates :student_id, uniqueness: true
    has_many :students
    belongs_to :gradebook

    def add_students(student_obj)
        if self.size > 0
            student_obj.each do |student|
                self.students << student
                self.size = size - 1
                if is_full
                    break
                end
            end
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
