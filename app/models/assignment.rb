class Assignment < ApplicationRecord
    belongs_to :class_room
    has_many :grades
    has_many :students, through: :grades
   
    validates :title, uniqueness: true
end
rails 