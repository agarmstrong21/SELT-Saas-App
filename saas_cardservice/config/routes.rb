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
  resources :cards
  get 'home/home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
