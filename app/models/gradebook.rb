class Gradebook < ApplicationRecord
    belongs_to :student
    has_many :grades
    has_many :assignments, through: :grades
end
