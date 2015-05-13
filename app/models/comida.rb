class Comida < ActiveRecord::Base

  translates :name, :description
  attr_accessible :description, :img, :menu_id, :name, :price, :url
  belongs_to :menu
  extend FriendlyId
  friendly_id :url

end
