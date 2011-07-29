class Dish < ActiveRecord::Base
  validates :name, :presence => true
  attr_protected :id, :created_at, :updated_at
  has_many :recipes
end
