class Review < ApplicationRecord
  belongs_to :restaurant
  validates :restaurant_id, presence: true
  validates :content, presence: true
  validates :rating, presence: true
  validates :rating, numericality: { only_integer: true }
  validates_inclusion_of :rating, in: (0..5), message: 'not a valid rating'
end
