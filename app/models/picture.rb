class Picture < ActiveRecord::Base
  belongs_to :customer
  belongs_to :recipe
  belongs_to :ingredient
end
