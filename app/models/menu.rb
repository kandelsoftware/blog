class Menu < ActiveRecord::Base
	translates :name
  attr_accessible :name,:image,:url
  has_many :comidas
   extend FriendlyId
   friendly_id :url

end
