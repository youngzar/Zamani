class Dessert < ActiveRecord::
  validates_presence_of :sweet, :choco, :words
  belongs_to :entree
end
