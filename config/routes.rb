Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get 'user_profile', to: 'pages#user_profile'

  resources :movies, only: [:index]
end
