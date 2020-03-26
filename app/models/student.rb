class Student < ApplicationRecord
    has_one :gradebook
    has_many :class_rooms, through: :gradebook
    has_many :grades
    has_many :assignments, through: :grades
    has_many :class_assignments, through: :class_room, source: :gradebook
    has_many :assignment_grades, through: :gradebook, source: :grades
    has_many :class_grades, through: :gradebook, source: :grades
    
    validates :email, uniqueness: true

    def create_gradebook
        self.gradebook.create
    end
    
    def name
        self.first_name + " "+ self.last_name
    end

    def get_assignment(assignment_obj)
        binding.pry
    end
end
