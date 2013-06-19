class Recipe < ActiveRecord::Base
  attr_accessible :drink_name, :state, :user_name
  has_and_belongs_to_many :ingredients
end
