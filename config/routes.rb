Rails.application.routes.draw do
  get 'tags/index'

  get 'tags/new'

  get 'tags/create'

  get 'tags/edit'

  get 'tags/update'

  get 'tags/destroy'

  get 'songs/index'

  get 'songs/new'

  get 'songs/create'

  get 'songs/edit'

  get 'songs/update'

  get 'songs/destroy'

  get 'playlists/index'

  get 'playlists/new'

  get 'playlists/create'

  get 'playlists/show'

  get 'playlists/edit'

  get 'playlists/update'

  get 'playlists/destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'users#index'
  resources :users
  resources :sessions, only: [:new, :create, :destroy]
  get '/login', to: 'sessions#new'
  get '/logout', to: 'sessions#destroy'
end


