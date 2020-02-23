class ClassRoom < ApplicationRecord
    has_one :teacher
    has_many :students
    has_one :gradebook
end
