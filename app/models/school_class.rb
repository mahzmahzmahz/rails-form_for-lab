class SchoolClass < ApplicationRecord
    has_many :student_classes
    has_many :students, through: :student_classes

    def wing
        "East Wing"
    end
end
