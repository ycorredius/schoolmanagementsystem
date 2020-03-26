class Teacher < ApplicationRecord
    has_one :class_room
    has_many :students, through: :class_room
    # has_many :qualifications
    validates :email, uniqueness: true

    def name
        self.first_name + " "+ self.last_name
    end
end
