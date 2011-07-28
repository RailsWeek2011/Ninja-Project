class CreateAssessments < ActiveRecord::Migration
  def change
    create_table :assessments do |t|
      t.integer :count
      t.decimal :rating
      t.references :recipe

      t.timestamps
    end
     #add_index :assessments, [:recipe_id, :user_id], :unique => true
    add_index :assessments, :recipe_id
  end
end
