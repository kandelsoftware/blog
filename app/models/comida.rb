class Comida < ActiveRecord::Base

  translates :name, :description
  attr_accessible :description, :img, :menu_id, :name, :price
  belongs_to :menu
  extend FriendlyId
  friendly_id :name

end
