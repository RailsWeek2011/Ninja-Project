class CreateIngredients < ActiveRecord::Migration
  def change
    create_table :ingredients do |t|
      t.string :name
      t.text :description
      t.references :ingredient_category

      t.timestamps
    end
    add_index :ingredients, :ingredient_category_id
  end
end
