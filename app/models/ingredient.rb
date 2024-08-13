class Ingredient < ApplicationRecord
	has_many :measured_ingredients
  	has_many :dishes, through: :measured_ingredients

  	validates :name, presence: true
end
