class Qualification < ApplicationRecord
    has_many :teachers
    validates :title, presence: true
    validates :title, uniqueness: true
end
