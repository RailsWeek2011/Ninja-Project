# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20110728104005) do

  create_table "assessments", :force => true do |t|
    t.integer  "count"
    t.decimal  "rating"
    t.integer  "recipe_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "assessments", ["recipe_id"], :name => "index_assessments_on_recipe_id"

  create_table "dishes", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ingredient_categories", :force => true do |t|
    t.string   "name"
    t.integer  "parent_id"
    t.integer  "level"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ingredients", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "ingredient_category_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "ingredients", ["ingredient_category_id"], :name => "index_ingredients_on_ingredient_category_id"

  create_table "needed_ingredients", :force => true do |t|
    t.integer  "recipe_id"
    t.integer  "ingredient_id"
    t.decimal  "quantity"
    t.string   "unit"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "needed_ingredients", ["ingredient_id"], :name => "index_needed_ingredients_on_ingredient_id"
  add_index "needed_ingredients", ["recipe_id"], :name => "index_needed_ingredients_on_recipe_id"

  create_table "recipe_tags", :force => true do |t|
    t.integer  "recipe_id"
    t.integer  "tag_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "recipe_tags", ["recipe_id"], :name => "index_recipe_tags_on_recipe_id"
  add_index "recipe_tags", ["tag_id"], :name => "index_recipe_tags_on_tag_id"

  create_table "recipes", :force => true do |t|
    t.string   "name"
    t.text     "making"
    t.integer  "author_id"
    t.integer  "dish_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "recipes", ["author_id"], :name => "index_recipes_on_author_id"
  add_index "recipes", ["dish_id"], :name => "index_recipes_on_dish_id"

  create_table "tags", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
