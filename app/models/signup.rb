class Signup < ApplicationRecord

    validates :time, numericality: {greater_than_or_equal_to: 0, less_than_or_equal_to: 24, message: "%{value} must be between 0 and 24"}
    
    belongs_to :camper
    belongs_to :activity
end
