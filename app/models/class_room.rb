class ClassRoom < ApplicationRecord
    belongs_to :teacher
    has_many :students
    belongs_to :gradebook
end
