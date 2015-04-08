class Descuento < ActiveRecord::Base
   attr_accessible :persona, :email, :fecha, :hora, :menu, :nombre, :telefono,:apellidos
     belongs_to :user
    validates_presence_of :persona, :on => :create,    :message =>"Personas no puede  vacio"
   validates :email,:presence => { :message =>"Entrar Tu e-mail"}, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, :message =>"Entrar E-mail válida!" }
    validates_presence_of :menu, :on => :create,       :message => "Menu no puede  vacio"
    validates_presence_of :fecha, :on => :create,       :message => "Fecha no puede  vacio"
    validates_presence_of :hora, :on => :create,        :message => "Hora no puede  vacio"
    validates_presence_of :nombre, :on => :create,       :message =>"Introducir  nombre. "
    validates_presence_of :apellidos, :on => :create,       :message =>"Introducir  apellido"
     validates :telefono,   :presence => { :message =>"Telefono no puede vacio"},
                       :numericality => true,
                       :length => { :minimum => 9, :maximum => 15 , :message => 'Entrar numero corecto!'}
  end

