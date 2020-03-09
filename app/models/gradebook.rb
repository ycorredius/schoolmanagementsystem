class Gradebook < ApplicationRecord
    has_one :classroom
    has_one :teacher, through: :classroom
    has_one :student, through: :classrooms
    has_many :assignments 
    belongs_to :grades, polymorphic: true
end
