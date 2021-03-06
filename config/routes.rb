Rails.application.routes.draw do
  # defines routes for the users controller actions
  get "users" => "users#index"
  post "users" => "users#create"
  get "users/new" => "users#new"
  get "users/:id/edit" => "users#edit", as: "edit_user"
  get "users/:id" => "users#show", as: "user"
  patch "users/:id" => "users#update"
  put "users/:id" => "users#update"
  delete "users/:id" => "users#destroy"

  # defines routes for the sessions controller actions
  get "login" => "sessions#new"
  post "login" => "sessions#create"
  delete "logout" => "sessions#destroy"

  # defines routes for the pets controller actions
  # get "pets" => "pets#index"
  # post "pets" => "pets#create"
  # get "pets/new" => "pets#new"
  # get "pets/:id/edit" => "pets#edit"
  # get "pets/:id" => "pets#show", as: "pet"
  # patch "pets/:id" => "pets#update"
  # put "pets/:id" => "pets#update"
  # delete "pets/:id" => "pets#destroy"

  # get "posts" => "posts#index"
  # post "posts" => "posts#create"
  # get "pets/:pet_id/posts/new" => "posts#new", as: "new_post"
  # get "pets/:pet_id/posts/:id/edit" => "posts#edit"
  # get "pets/:pet_id/posts/:id" => "posts#show", as: "post"
  # patch "pets/:pet_id/posts/:id" => "posts#update"
  # put "pets/:pet_id/posts/:id" => "posts#update"
  # delete "pets/:pet_id/posts/:id" => "posts#destroy"

  # get "pets/:pet_id/posts/:post_id/comments" => "comments#index"
  # post "pets/:pet_id/posts/:id/comments" => "comments#create"
  # get "pets/:pet_id/posts/:id/comments/new" => "comments#new", as: "new_comment"
  # get "pets/:pet_id/posts/:id/comments/:id/edit" => "comments#edit"
  # get "pets/:pet_id/posts/:id/comments/:id" => "comments#show", as: "comment"
  # patch "pets/:pet_id/posts/:id/comments/:id" => "comments#update"
  # put "pets/:pet_id/posts/:id/comments/:id" => "comments#update"
  # delete "pets/:pet_id/posts/:id/comments/:id" => "comments#destroy"

  resources :pets do
    resources :posts do
      resources :comments
    end
  end
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root "sessions#new"

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
