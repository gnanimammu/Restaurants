class Dish < ApplicationRecord
 
  belongs_to :restaurant
  has_many :measured_ingredients
  has_many :ingredients, through: :measured_ingredients

  validates :name, presence: true

  has_one_attached :image
end
