class RecipeSearchController < ApplicationController
  def index
    @recipe = Recipe.new
  end
end
