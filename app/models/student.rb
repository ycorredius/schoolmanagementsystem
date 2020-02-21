class Student < ApplicationRecord
    belongs_to :class_room
    has_many :class_rooms
    has_many :teachers
    def name
        self.first_name + " "+ self.last_name
    end
end
