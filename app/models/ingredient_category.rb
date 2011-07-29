class IngredientCategory < ActiveRecord::Base
#  attr_protected :id, :created_at, :updated_At
  belongs_to :parent, :foreign_key => "parent_id", :class_name => "IngredientCategory"
  has_one :ingredient
  has_many :ingredient_categories
end
