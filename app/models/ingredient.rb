class Ingredient < ActiveRecord::Base
  attr_protected :id, :created_at, :updated_at
  belongs_to :ingredient_category
  has_many :recipes, :through => :needed_ingredients
end
