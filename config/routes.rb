Rails.application.routes.draw do
  devise_for :users, :controllers => { :omniauth_callbacks => 'users/omniauth_callbacks' }
  root to: 'pages#home'
  get 'hello_world', to: 'hello_world#index'
  resources :locations, only: [:create]
  resources :playlists, only: [:create]
  resources :pages, only: [:home, :show]
end
