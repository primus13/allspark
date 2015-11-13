Rails.application.routes.draw do
  root 'pages#home'
    


  devise_for :users, controllers: { omniauth_callbacks: "users/omniauth_callbacks" }
  resources :users do
      resources :projects, shallow: true
      resources :user_printers, shallow: true
  end

  resources :projects do
      resources :userfiles, shallow: true
  end
  
  #resources :printers do
  #  resources :user_printers
  #end
  
  resources :user_printers

  resources :userfiles
  
  resources :countries
  
  resources :manufacturers
  
  resources :categories
  
  resources :technologies
  
  
  
  
  resources :devices
  
  resources :printers
  
  resources :nozzles
  
  resources :heatbeds
  
  resources :hotends
  
  resources :user_nozzles
  
  resources :user_heatbeds
  
  resources :user_hotends
  
  resources :user_printer_setups
  
  
  
  
  resources :colorfamilies
  
  resources :colors
  
  resources :materials
  
  resources :variants
  
  resources :filaments
  
  resources :filament_colors
  
  resources :filament_variants
  
  resources :uniquefilaments
  
  resources :user_uniquefilaments
  
  
  
  # API related
  
  namespace :api do
    resources :projects, :users
  end

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
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

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
