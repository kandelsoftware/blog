class Comida < ActiveRecord::Base
	belongs_to :menu
  attr_accessible :description, :img, :menu_id, :name, :price
  extend FriendlyId
   friendly_id :name

end
