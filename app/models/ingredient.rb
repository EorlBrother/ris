class Ingredient < ActiveRecord::Base
  has_many :pictures
  has_many :ingredientPackages
end
