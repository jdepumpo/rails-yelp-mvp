class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :delete_all
  validates :name, presence: true
  validates :address, presence: true
  validates :category, presence: true
  validates_inclusion_of :category, in: %w[chinese italian japanese french belgian], message: 'not a valid category'
end
