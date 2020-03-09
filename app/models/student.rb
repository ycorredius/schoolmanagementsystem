class Student < ApplicationRecord
    has_one :gradebook
    has_one :class_rooms_student
    has_many :class_rooms, through: :class_rooms_students

    def name
        self.first_name + " "+ self.last_name
    end
end
