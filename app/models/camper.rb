class Camper < ApplicationRecord
    validates :name, presence: true
    validates :age, numericality: {greater_than_or_equal_to: 8, less_than_or_equal_to: 18, message: "%{value} must be between 8 and 18"}


    has_many :signups , dependent: :destroy
    has_many :activities, through: :signups , dependent: :destroy
end
