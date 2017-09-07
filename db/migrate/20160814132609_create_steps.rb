class CreateSteps < ActiveRecord::Migration[5.0]
  def change
    create_table :steps do |t|
      t.text :description, null: false
      t.references :recipe, index: true

      t.timestamps
    end
  end
end
