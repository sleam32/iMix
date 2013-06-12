class Ingredient < ActiveRecord::Base
  attr_accessible :name, :subtype_id, :type_id
end
