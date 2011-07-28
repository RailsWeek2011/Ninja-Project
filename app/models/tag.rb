class Tag < ActiveRecord::Base
  has_many :recipes, :through => :needed_ingredients
end
