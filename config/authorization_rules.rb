authorization do
  role :admin do
    has_permission_on [:himalayas,:users,:menus,:comidas,:descuentos] ,:to => [:index, :show, :new, :create, :edit, :update, :destroy]
  end

  role :guest do
  	 has_permission_on [:users] , :to => [ :show, :new, :create]
     has_permission_on [:comidas] , :to => [ :index,:show]
      has_permission_on [:menus] , :to => [ :index]
      has_permission_on [:himalayas,:descuentos] , :to => [  :show,:new, :create]

  end



end