class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me,:username,:apellidos
  # attr_accessible :title, :body
  validates_presence_of :username
  has_many :himalayas
  has_many :assignments
  has_many :roles, :through => :assignments
  def role_symbols
   roles.map do |role|
    role.name.underscore.to_sym
  end
  end


end
