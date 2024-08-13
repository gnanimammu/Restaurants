class CreateMeasuredIngredients < ActiveRecord::Migration[7.0]
  def change
    create_table :measured_ingredients do |t|
      t.references :dish, null: false, foreign_key: true
      t.references :ingredient, null: false, foreign_key: true
      t.references :measurement, null: false, foreign_key: true
      t.integer :amount
      t.timestamps
    end
  end
end
