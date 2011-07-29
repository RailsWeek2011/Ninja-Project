class Recipe < ActiveRecord::Base
  validates :dish_id, :presence => true
  validates :making, :presence => true

  attr_accessible :name, :making
  belongs_to :dish
  belongs_to :author
  has_many :assessments
  has_many :needed_ingredients
  has_many :ingredients, :through => :needed_ingredients
  has_many :recipe_tags
  has_many :tags, :through => :recipe_tags
end
