class Subject < ApplicationRecord
    belongs_to :classroom
    has_many :teachers, through: :classroom
    
end
