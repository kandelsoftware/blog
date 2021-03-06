Restaurant::Application.routes.draw do

      devise_for :users

  scope ":locale", locale: /#{I18n.available_locales.join("|")}/ do
      resources :exitpops


      resources :descuentos

    #resources :restaurante_hindu_menus, path: '/restaurante-hindu'
      resources :assignments
      resources :roles
      resources :users
      resources :infos

       get "map" ,to:"infos#map"
       get "menudegustation",to:"infos#menudegustation"
       get "menudegustation18",to:"infos#menudegustation18"
       get "offerta",to:"infos#menu12"

       resources :himalayas
       #resources :himalayas,only:[:index,:new,:create]
      #resources :himalayas,path:"",except:[:index,:new,:create]

      #resources :menus,path: '/indian-restaurant-barcelona' do
      #resources :comidas,path: '/indian-foods'
      #end
    #resources :menus,path: '/restaurante-hindu-barcelona' do
    #resources :comidas,path: '/comida-india'
    #end
    resources :menus do
    resources :comidas
    end

     root :to => 'himalayas#new' , defaults: { :format => "html" }# handles /en/
     match "*path", to: "locale#not_found" # handles /en/fake/path/whatever
   end
   root to: redirect("/#{I18n.default_locale}")


   match '*path', to: redirect("/#{I18n.default_locale}/%{path}")






  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
