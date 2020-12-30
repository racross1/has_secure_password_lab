Rails.application.routes.draw do
  resources :users

  #all the following copied over from Login required lab as reference 
  #(may not currently match routes and methods in this lab
  root 'application#hello'
  get '/login' => 'sessions#new', as: 'new_session'
  post '/login' => 'sessions#create'
  post '/logout' => 'sessions#destroy'
  get '/secrets' => 'secrets#show', as: 'secrets'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
