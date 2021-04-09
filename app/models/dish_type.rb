class DishType < ApplicationRecord
    validates_uniqueness_of :name

    validates :name, presence: true, length: {maximum: 50, minimum: 2 }
    validates :extra, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
end
