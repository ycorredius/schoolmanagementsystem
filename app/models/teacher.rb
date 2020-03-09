class Teacher < ApplicationRecord
    has_one :classroom
    has_many :students, through: :gradebooks
    # has_many :qualifications

    def name
        self.first_name + " "+ self.last_name
    end
end
