Blog::Application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".
  get '/posts' => 'posts#index', as: 'principal'
  get '/posts/admi' => 'posts#admi' , as: 'admi'   
  get '/posts/new' => 'posts#new'
  get '/posts/report' => 'posts#report'
  get '/posts/:id' => 'posts#edit'
  get '/posts/delete/:id' => 'posts#delete'
  get '/posts/likes/:id' => 'posts#likes'
  get '/posts/show/:id' => 'posts#show'
   get '/posts/dislikes/:id' => 'posts#dislikes'


  post '/posts' => 'posts#create'
  post '/posts/:id' => 'posts#update'
  post '/comments/:id' => 'comments#create'
  # You can have the root of your site routed with "root"
   root 'posts#index'


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
