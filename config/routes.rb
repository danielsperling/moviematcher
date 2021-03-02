Rails.application.routes.draw do
  get 'favorites/update'
  devise_for :users
  root to: 'pages#home'
  get 'user_profile', to: 'pages#user_profile'

  resources :movies, only: %i[index show]
end
