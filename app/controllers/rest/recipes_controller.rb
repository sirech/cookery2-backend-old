module Rest
  class RecipesController < ApplicationController
    def index
      @recipes = Recipe.all
    end

    def show
      @recipe = Recipe.find(params[:id])
    end

    def create
      @recipe = Recipe.new(recipe_params)

      return render status: :unprocessable_entity unless @recipe.valid?
      @recipe.save!
    end

    private

    def recipe_params
      params.required(:recipe).permit(:name, :difficulty, :servings)
    end
  end
end
