class Customer < ActiveRecord::Base
  has_many :pictures
  has_many :recipes
end
