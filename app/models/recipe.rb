class Recipe < ActiveRecord::Base
  has_many :pictures
  belongs_to :customer
  has_many :ingredientPackages
end
