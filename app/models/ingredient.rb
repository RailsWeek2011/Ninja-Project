class Ingredient < ActiveRecord::Base
  validates :name, :presence => true
  validates :ingredient_category_id, :presence => true

  attr_protected :id, :created_at, :updated_at
  belongs_to :ingredient_category
  has_many :recipes, :through => :needed_ingredients
end
