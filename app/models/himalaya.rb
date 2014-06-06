class Himalaya < ActiveRecord::Base
  attr_accessible :persona, :email, :fecha, :hora, :menu, :nombre, :telefono,:apellidos
   belongs_to :user
  validates_presence_of :persona, :on => :create,    :message =>"Personas no puede estar vacio"
    validates_presence_of :email, :on => :create,       :message => "email no puede estar vacio"

  validates_presence_of :menu, :on => :create,       :message => "Menu no puede estar vacio"
  validates_presence_of :fecha, :on => :create,       :message => "Fecha no puede estar vacio"
  validates_presence_of :hora, :on => :create,        :message => "Hora no puede estar vacio"
  validates_presence_of :nombre, :on => :create,       :message =>" introducir  nombre. "
  validates_presence_of :apellidos, :on => :create,       :message =>"introducir  apellido"
   validates :telefono,   :presence => {:message => 'entrar numero corecto!'},
                     :numericality => true,
                     :length => { :minimum => 9, :maximum => 15 }
  validates_presence_of :telefono, :on => :create,     :message =>"Telefono no  puede estar vacio"
end

