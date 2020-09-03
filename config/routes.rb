Rails.application.routes.draw do
  resources :users
  root 'users#home'
  get '/login', to: 'sessions#new', as: 'login'
  post '/login', to: 'sessions#create'
end
