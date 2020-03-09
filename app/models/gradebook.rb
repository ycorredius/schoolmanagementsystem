class Gradebook < ApplicationRecord
    belongs_to :student
    has_many :grades
end
