class Assignment < ApplicationRecord
    has_many :gradebooks, :as => :grades
end
