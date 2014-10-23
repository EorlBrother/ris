class RecipesController < ApplicationController
  before_action :set_recipe, only: [:show]

  def index
    @results = Array.new
    if (params[:q]!=nil)
      @results = Recipe.where('name LIKE ?', '%'+params[:q]+'%')
      @has_results = @results.length > 0
    end
  end

  def search

  end

  def show

  end

  def new

  end

  def create
    @recipe = Recipe.new
    @recipe.name = params[:name]
    @recipe.description = params[:description]
    @recipe.howto = params[:howto]
    @recipe.difficulty = params[:difficulty][0].to_i
    @recipe.tools = params[:tools]
    @recipe.customer = Customer.find(1)
    @recipe.save
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_recipe
      @recipe = Recipe.find(params[:id])
    end
end