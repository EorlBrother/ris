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
    @recipe.ingredientPackages = Array.new
    @ingredientPackage = IngredientPackage.new
    @ingredientPackage.ingredient = Ingredient.find(params[:ingredient])
    @ingredientPackage.unit = Unit.find(params[:unit])
    @ingredientPackage.amount = params[:amount][0].to_f
    @recipe.ingredientPackages << @ingredientPackage
    @recipe.save
    
  end

  def zutathinzufügen
   @zutat = Array.new
   @zutat << params[:ingredient_unit] << params[:ingredient_amount] << params[:ingredients]
  end
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_recipe
      @recipe = Recipe.find(params[:id])
    end
end