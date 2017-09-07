class CreateCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :categories do |t|
      t.string :name, null: false
    end

    create_table :categories_recipes do |t|
      t.belongs_to :recipe, index: true
      t.belongs_to :category, index: true
    end
  end
end
