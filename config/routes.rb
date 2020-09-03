Rails.application.routes.draw do

    # resources :sessions, only:[:new, :create, :destroy]
    get '/login', to: 'sessions#new', as: 'new_login'
    post '/login', to: 'sessions#create', as: 'login'
    post '/logout', to: 'sessions#destroy', as:  'logout'

    resources :users, only:[:new, :create]

#   get 'sessions/new', to: 'sessions#new'

#   post 'sessions', to: 'sessions#create'

#   get 'sessions/delete', :to 'sessions#destroy'

  root 'users#welcome'

#   get 'users/new', to 

#   get 'users/create'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
