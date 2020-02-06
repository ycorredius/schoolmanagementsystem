class School < ApplicationRecord
    has_many :teachers
    has_many :students
    has_many :classrooms
    belongs_to :admin
end
