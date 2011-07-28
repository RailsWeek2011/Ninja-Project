class Recipe < ActiveRecord::Base
  attr_protected :id, :author_id, :created_at, :updated_at
  belongs_to :dish
  belongs_to :author
  has_many :assessments
  has_many :needed_ingredients
  has_many :ingredients, :through => :needed_ingredients
  has_many :recipe_tags
  has_many :tags, :through => :recipe_tags
end
