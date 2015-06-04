Rails.application.routes.draw do

  devise_for :users
  # Routes for the User resource:
  # CREATE
  get "/users/new", :controller => "users", :action => "new"
  post "/create_user", :controller => "users", :action => "create"

  # READ
  get "/users", :controller => "users", :action => "index"
  get "/users/:id", :controller => "users", :action => "show"

  # UPDATE
  get "/users/:id/edit", :controller => "users", :action => "edit"
  post "/update_user/:id", :controller => "users", :action => "update"

  # DELETE
  get "/delete_user/:id", :controller => "users", :action => "destroy"
  #------------------------------

  root 'clothings#index'
  #get "/", :controller => "clothings", :action => "index"
  # Routes for the Wear resource:
  # CREATE
  get "/wears/new", :controller => "wears", :action => "new"
  post "/create_wear", :controller => "wears", :action => "create"

  get "/wears/new/:clothing_id", :controller => "wears", :action => "record"

  # READ
  get "/wears", :controller => "wears", :action => "index"
  get "/wears/:id", :controller => "wears", :action => "show"

  # UPDATE
  get "/wears/:id/edit", :controller => "wears", :action => "edit"
  post "/update_wear/:id", :controller => "wears", :action => "update"

  # DELETE
  get "/delete_wear/:id", :controller => "wears", :action => "destroy"
  #------------------------------

  # Routes for the Dry_clean resource:
  # CREATE
  get "/dry_cleans/new", :controller => "dry_cleans", :action => "new"
  post "/create_dry_clean", :controller => "dry_cleans", :action => "create"

  get "/dry_cleans/new/:clothing_id", :controller => "dry_cleans", :action => "record"

  # READ
  get "/dry_cleans", :controller => "dry_cleans", :action => "index"
  get "/dry_cleans/:id", :controller => "dry_cleans", :action => "show"

  # UPDATE
  get "/dry_cleans/:id/edit", :controller => "dry_cleans", :action => "edit"
  post "/update_dry_clean/:id", :controller => "dry_cleans", :action => "update"

  # DELETE
  get "/delete_dry_clean/:id", :controller => "dry_cleans", :action => "destroy"
  #------------------------------

  # Routes for the Clothing resource:
  # CREATE
  get "/clothings/new", :controller => "clothings", :action => "new"
  post "/create_clothing", :controller => "clothings", :action => "create"

  # READ
  get "/clothings", :controller => "clothings", :action => "index"
  get "/clothings/:id", :controller => "clothings", :action => "show"

  # UPDATE
  get "/clothings/:id/edit", :controller => "clothings", :action => "edit"
  post "/update_clothing/:id", :controller => "clothings", :action => "update"

  # DELETE
  get "/delete_clothing/:id", :controller => "clothings", :action => "destroy"
  #------------------------------

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
