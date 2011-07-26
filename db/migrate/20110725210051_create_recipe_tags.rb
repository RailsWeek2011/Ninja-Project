class CreateRecipeTags < ActiveRecord::Migration
  def change
    create_table :recipe_tags do |t|
      t.references :recipe
      t.references :tag

      t.timestamps
    end
    add_index :recipe_tags, :recipe_id
    add_index :recipe_tags, :tag_id
  end
end
