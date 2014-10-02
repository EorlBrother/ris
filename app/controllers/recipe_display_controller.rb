class RecipeDisplayController < ApplicationController
  before_action :set_recipe, only: [:show]

  def index
    @results = Recipe.where('name LIKE ?', '%'+params[:q]+'%')
    @has_results = @results.length > 0
  end

  def show

  end

  def create
    @recipe = Recipe.new
    @recipe.name = params[:name]
    @recipe.description = params[:description]
    @recipe.howto = params[:howto]
    @recipe.difficulty = params[:difficulty]
    @recipe.tools = params[:tools]
    @recipe.save
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_recipe
      @recipe = Recipe.find(params[:id])
    end
end