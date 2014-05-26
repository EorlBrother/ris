class IngredientDisplayController < ApplicationController
  before_action :set_ingredient, only: [:show]

  def index
    @results = Ingredient.where(name: params[:q])
    @has_results = @results.length > 0
  end

  def show

  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ingredient
      @ingredient = Ingredient.find(params[:id])
    end
end
