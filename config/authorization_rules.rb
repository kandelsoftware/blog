authorization do
  role :admin do
    has_permission_on [:himalayas,:users,:menus,:comidas] ,:to => [:index, :show, :new, :create, :edit, :update, :destroy]
  end

  role :guest do
  	 has_permission_on [:users] , :to => [ :show, :new, :create]
     has_permission_on [:comidas] , :to => [ :index,:show]
      has_permission_on [:menus] , :to => [ :index]
      has_permission_on [:himalayas] , :to => [  :new, :create]
       has_permission_on :himalayas, :to => [ :show]
  end



end