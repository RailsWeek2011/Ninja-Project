class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :name
      t.text :making
      t.references :author
      t.references :dish

      t.timestamps
    end
    add_index :recipes, :author_id
    add_index :recipes, :dish_id
  end
end
