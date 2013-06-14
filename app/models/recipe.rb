class Recipe < ActiveRecord::Base
  attr_accessible :drink_name, :state, :user_name
end
