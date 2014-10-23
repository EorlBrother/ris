class IngredientsController < ApplicationController
  before_action :set_ingredient, only: [:show]

 def index
    @results = Array.new
    if (params[:q]!=nil)
      @results = Ingredient.where('name LIKE ?', '%'+params[:q]+'%')
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