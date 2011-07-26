class Recipe < ActiveRecord::Base
  attr_accessible :name, :making
  belongs_to :dish
  belongs_to :author
  has_many :needed_ingredients
  has_many :ingredients, :through => :needed_ingredients
  has_many :recipe_tags
  has_many :tags, :through => :recipe_tags
end
