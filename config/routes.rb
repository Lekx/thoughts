Rails.application.routes.draw do
  root to: 'application#home', as: :home
  
  get '/categories', to: 'categories#index', as: :categories
  get '/categories/new', to: 'categories#new', as: :new_category
  get '/categories/:id', to: 'categories#show', as: :category
  
 resources :thoughts

#     thoughts GET    /thoughts(.:format)          thoughts#index
#              POST   /thoughts(.:format)          thoughts#create
#  new_thought GET    /thoughts/new(.:format)      thoughts#new
# edit_thought GET    /thoughts/:id/edit(.:format) thoughts#edit
#      thought GET    /thoughts/:id(.:format)      thoughts#show
#              PATCH  /thoughts/:id(.:format)      thoughts#update
#              PUT    /thoughts/:id(.:format)      thoughts#update
#              DELETE /thoughts/:id(.:format)      thoughts#destroy


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
