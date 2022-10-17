Rails.application.routes.draw do

  post 'profile/:id/follow', to: 'profile#follow', as: 'follow'
  post 'profile/:id/unfollow', to: 'profile#unfollow', as: 'unfollow'
  post 'profile/:id/accept', to: 'profile#accept', as: 'accept'
  post 'profile/:id/decline', to: 'profile#decline', as: 'decline'
  post 'profile/:id/cancel', to: 'profile#cancel', as: 'cancel'

  get 'profile/:id', to: 'profile#show', as: 'profile'

  root 'pages#home'
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
