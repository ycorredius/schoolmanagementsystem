class Teacher < ApplicationRecord
    belongs_to :classroom
    has_many :students, through: :classroom
    has_many :qualifications
end
