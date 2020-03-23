class Student < ApplicationRecord
    has_one :gradebook
    has_many :class_rooms, through: :gradebook
    has_many :grades, through: :gradebook
    has_many :assignments, through: :class_rooms, source: :gradebook
    has_many :class_assignments, through: :class_room, source: :gradebook
    has_many :assignment_grades, through: :gradebook, sources: :grades
    has_many :class_grades, through: :gradebook, source: :grades
    
    validates :email, uniqueness: true

    # before_action :save, :create_gradebook

    def create_gradebook
        self.gradebook.create
    end
    
    def name
        self.first_name + " "+ self.last_name
    end
end
