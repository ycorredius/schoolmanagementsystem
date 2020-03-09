class Student < ApplicationRecord
    has_and_belongs_to_many :class_rooms
    has_many :teachers, through: :class_rooms
    has_many :assignments, through: :gradebook
    has_many :gradebooks, :as => :grades, through: :class_rooms
    def name
        self.first_name + " "+ self.last_name
    end
end
