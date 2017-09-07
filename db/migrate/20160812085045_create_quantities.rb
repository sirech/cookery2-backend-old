class CreateQuantities < ActiveRecord::Migration[5.0]
  def change
    create_table :quantities do |t|
      t.string :unit
      t.integer :amount, default: 0
      t.references :recipe, index: true
      t.references :ingredient, index: true

      t.timestamps
    end
  end
end
