class Teacher < ApplicationRecord
    has_one :class_room
    # has_many :qualifications

    def name
        self.first_name + " "+ self.last_name
    end
end
