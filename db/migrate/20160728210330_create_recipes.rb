class CreateRecipes < ActiveRecord::Migration[5.0]
  def change
    create_table :recipes do |t|
      t.string :name, null: false
      t.integer :servings, default: 1
      t.integer :difficulty, default: 0

      t.timestamps
    end
  end
end
