class Comida < ActiveRecord::Base

  translates :name, :description
  attr_accessible :description, :img, :menu_id, :name, :price, :url,:image
  belongs_to :menu
  extend FriendlyId
  friendly_id :url
  mount_uploader :image, ImageUploader
end
