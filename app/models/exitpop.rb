class Exitpop < ActiveRecord::Base
  attr_accessible :email, :name
  validates_presence_of :name, :on => :create, :message => "name can't be blank"
  validates_presence_of :email, :on => :create, :message => "email can't be blank"
end
