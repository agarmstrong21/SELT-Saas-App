Rails.application.routes.draw do
  root 'home#home'
  resources :piles
  get 'piles/new'
  get 'piles/show'
  get 'piles/index'
  get 'piles/create'
  get 'piles/update'
  get 'piles/destroy'
  get 'piles/new'
  get 'piles/show'
  get 'piles/index'
  post 'piles/button_press'
  resources :cards
  get 'home/home'
  resources :users
  match '/login', to: 'sessions#new', via: :get
  match '/login_create', to: 'sessions#create', via: :post
  match '/logout', to: 'sessions#destroy', via: :delete
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
