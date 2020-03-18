class Student < ApplicationRecord
    has_many :class_rooms
    has_many :teachers, through: :class_rooms
    has_many :assignments
    has_many :grades, through: :assignments
    has_one :assignment_grade
    validates :email, uniqueness: true
    
    
    def name
        self.first_name + " "+ self.last_name
    end
end
