class Recipe < ActiveRecord::Base
  attr_accessible :drink_name, :state, :user_name
  has_many :ingredients
end
