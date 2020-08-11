Rails.application.routes.draw do
  
  resources :artist_instruments, only: [:new, :create]
  resources :artists, only: [:show, :index, :new, :create]

  # get '/artist_instruments'
  # post '/artist_instruments'
end
