class Student < ApplicationRecord
    has_one :gradebook
    has_one :class_rooms_student
    has_many :class_rooms, through: :class_rooms_students

    has_many :class_rooms
    has_many :teachers, through: :class_rooms
    
    def name
        self.first_name + " "+ self.last_name
    end
end
