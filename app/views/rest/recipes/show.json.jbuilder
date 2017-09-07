json.extract! @recipe, :id, :name, :servings, :difficulty, :duration
json.quantities @recipe.quantities, partial: 'rest/quantities/quantity', as: :quantity
json.steps @recipe.steps, partial: 'rest/steps/step', as: :step
