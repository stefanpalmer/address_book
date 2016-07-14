class City < ApplicationRecord
  validates :elevation, numericality: {
    greater_than_or_equal_to: 3315,
    if: ->(city) {city.state == 'CO'},
    message: 'is too low, the lowest point in CO is 3315 feet'
  }
end
