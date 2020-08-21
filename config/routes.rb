Rails.application.routes.draw do
  devise_for :users
   root  'blogs#index'
   resources :blogs   do#tweets_controllerに対してのresourcesメソッド
   resources :comments, only: [:create]
  end
  resources :users, only: [:show]  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
