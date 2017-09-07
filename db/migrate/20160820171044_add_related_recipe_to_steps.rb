class AddRelatedRecipeToSteps < ActiveRecord::Migration[5.0]
  def change
    change_column_null(:steps, :recipe_id, false)
    add_column(:steps, :related_id, :integer)
  end
end
