class Recipe < ActiveRecord::Base
  validates :name, :presence => true
  validates :ingredients, :presence => true
  validates :recipe, :presence => true
  validates :stars, :presence => true
  validates :stars, :inclusion => { :in => 1..5 }
  has_many :tags
end
