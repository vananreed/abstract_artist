Rails.application.routes.draw do
  devise_for :users
  root to: 'artworks#index'

  resources :artworks
end
