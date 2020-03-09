class Student < ApplicationRecord
    has_one :gradebook
    has_many :class_rooms
    has_many :grades , through: :gradebook
    has_many :teachers, through: :class_rooms
    has_many :assignments, through: :class_rooms


    validates :email, uniqueness: true
    
    
    def name
        self.first_name + " "+ self.last_name
    end

end
