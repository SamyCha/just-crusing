Rails.application.routes.draw do

  get 'carts/show'

  devise_for :users
  resources :excursions

  resources :boats do
    resources :cabins
    end

  resources :posts


resource :cart, only: [:show] do
  put 'add/:cabin_id', to: 'carts#add', as: :add_to
  put 'remove/:cabin_id', to: 'carts#remove', as: :remove_from
end





  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
