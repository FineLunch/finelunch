class Dish < ApplicationRecord
  belongs_to :dish_type

  mount_uploader :picture_url, PictureUrlUploader

  validates :name, presence: true, length: {maximum: 50, minimum: 2}
  validates :description, presence: true, length: {minimum: 20}
  validates :price, presence: true
end
