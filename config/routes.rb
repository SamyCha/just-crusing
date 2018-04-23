Rails.application.routes.draw do

  devise_for :users
  resources :excursions

  resources :boats do
    resources :cabins
    end

  resources :posts

  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
