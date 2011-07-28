class Dish < ActiveRecord::Base
  attr_protected :id, :created_at, :updated_at
  has_many :recipes
end
