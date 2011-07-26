class Dish < ActiveRecord::Base
  has_many :recipes
end
