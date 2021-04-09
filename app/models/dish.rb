class Dish < ApplicationRecord
  belongs_to :dish_type

  validates :name, presence: true, length: {maximum: 50, minimum: 2}
  validates :description, presence: true, length: {minimum: 20}
  validates :price, presence: true
end
