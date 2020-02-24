class Gradebook < ApplicationRecord
    has_one :classroom
    has_one :teacher, dependent: :classroom
    has_many :students, through: :classroom
    has_many :assignments
end
