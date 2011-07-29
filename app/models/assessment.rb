class Assessment < ActiveRecord::Base
  validates :rating, :presence => true

  belongs_to :recipe
end
