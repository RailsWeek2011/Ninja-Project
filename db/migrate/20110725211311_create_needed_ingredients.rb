class CreateNeededIngredients < ActiveRecord::Migration
  def change
    create_table :needed_ingredients do |t|
      t.references :recipe
      t.references :ingredient
      t.decimal :quantity
      t.string :unit

      t.timestamps
    end
    add_index :needed_ingredients, :recipe_id
    add_index :needed_ingredients, :ingredient_id
  end
end
