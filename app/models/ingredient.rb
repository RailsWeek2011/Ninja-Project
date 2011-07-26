class Ingredient < ActiveRecord::Base
  attr_accessible :name, :description
  belongs_to :ingredient_category
  has_many :recipes, :through => :needed_ingredients
end
