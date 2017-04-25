Rails.application.routes.draw do
  root 'users#index'
  resources :users do
    resources :playlists, shallow: true do
      resources :songs
      resources :tags
    end
  end

  resources :sessions, only: [:new, :create, :destroy]
  get '/login', to: 'sessions#new'
  get '/logout', to: 'sessions#destroy'
end


