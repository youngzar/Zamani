class Entree < ActiveRecord::Base
    validates_presence_of :food, :menu, :description
    has_many :dessert
end
