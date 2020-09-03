Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'welcome#hello'


  resources :sessions, only: [:create]

  resources :users, only: [:new, :create]
end
