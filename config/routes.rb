Rails.application.routes.draw do

get "/login" => "sessions#new", as: "login"
post "/login" => "sessions#create"

post "/logout" => "sessions#destroy"

resources :users, only: [:new, :create]

root "welcome#homepage"

end
