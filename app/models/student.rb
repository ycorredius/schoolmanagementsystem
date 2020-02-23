class Student < ApplicationRecord
    has_many :class_rooms
    has_many :teachers, through: :class_rooms
    
    def name
        self.first_name + " "+ self.last_name
    end
end
