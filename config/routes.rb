Rails.application.routes.draw do
  

  devise_for :users, :controllers => { omniauth_callbacks: 'user/omniauth_callbacks'}

  get 'register/info1'

  get 'register/info2'

  get 'register/info1'

  get 'register/info2'
  
  root 'home#index'

  #news
 
 
  get 'news/index' => 'news#index'
  
  get 'news/new' => 'news#new'
  
  post 'news/create' => 'news#create'
  
  get 'news/show/:id' => 'news#show'
  
  get 'news/edit/:id' => 'news#edit'
  
  post 'news/update/:id' => 'news#update'
  
  get 'news/destroy/:id' => 'news#destroy'
  
  get 'news/like/:id' => 'news#like'
  
  
  #post
  
  get 'post/index' => 'post#index'
  
  get 'post/new' => 'post#new'
  
  post 'post/create' => 'post#create'
  
  get 'post/show/:id' => 'post#show'
  
  get 'post/edit/:id' => 'post#edit'
  
  post 'post/update/:id' => 'post#update'
  
  get 'post/destroy/:id' => 'post#destroy'
  
  
  #news_comment
  
  post 'news/:post_id/comments/create' => 'news_comment#create'
  
  get 'news/:post_id/comments/destroy/:comment_id' => 'news_comment#destroy'
  
  get 'news/:post_id/comments/edit/:comment_id' => 'news_comment#edit'
  
  post 'news/:post_id/comments/update/:comment_id' => 'news_comment#update'
  
  
  #book
  
  get 'book/index' => 'book#index'
  
  get 'book/mylist/:id' => 'book#mylist'
  
  get 'book/check' => 'book#check'
  
  
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
