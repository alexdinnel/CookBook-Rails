class Tag < ActiveRecord::Base
  validates :name, :presence => true
  validates :recipe_id, :presence => true
  belongs_to :recipe
end
