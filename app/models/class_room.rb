class ClassRoom < ApplicationRecord
    belongs_to :teacher
    belongs_to :subject
    has_many :students
end
