class ClassRoom < ApplicationRecord
    belongs_to :teacher
    has_many :grades
    has_many :students
    has_many :assignments
    has_many :gradebooks, through: :grades
    
    validates :subject, presence: true
    accepts_nested_attributes_for :students
    
    

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
