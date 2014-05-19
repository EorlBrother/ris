class IngredientPackage < ActiveRecord::Base
  belongs_to :recipe
  belongs_to :unit
  belongs_to :ingredient
end
