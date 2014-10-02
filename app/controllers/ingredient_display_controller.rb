class IngredientDisplayController < ApplicationController
  before_action :set_ingredient, only: [:show]

  def index
    @results = Ingredient.where('name LIKE ?', '%'+params[:q]+'%')
    @has_results = @results.length > 0
  end

  def show
    
  end

  def create
    @ingredient = Ingredient.new
    @ingredient.name = params[:name]
    @ingredient.description = params[:description]
    @ingredient.storage = params[:storage]
    @ingredient.save
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ingredient
      @ingredient = Ingredient.find(params[:id])
    end
end
