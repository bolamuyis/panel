class Teacher < ApplicationRecord
    validates :age, numericality: {
        less_than: 150, message: "You must be less than 150"
    }
    has_many :cohorts, required:false
end