class Pet < ApplicationRecord
  belongs_to :user
  validates :age, numericality: { less_than_or_equal_to: 30, message: "This pet should be dead by now" }
end
