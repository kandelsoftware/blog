class Menu < ActiveRecord::Base
  attr_accessible :name,:image,:url
  has_many :comidas
   extend FriendlyId
   friendly_id :name

end
