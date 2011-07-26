class CreateIngredientCategories < ActiveRecord::Migration
  def change
    create_table :ingredient_categories do |t|
      t.string :name
      t.integer :parent_id
      t.integer :level

      t.timestamps
    end
  end
end
