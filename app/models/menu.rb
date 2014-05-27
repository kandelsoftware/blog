class Menu < ActiveRecord::Base
  attr_accessible :name,:image
  has_many :comidas
end
