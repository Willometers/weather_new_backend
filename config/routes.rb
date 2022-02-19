Rails.application.routes.draw do
  
  resources :skiareas
  resources :users
  resources :locations

  delete "/delete", to: "locations#destroy"

  get "/me", to: "users#show"
  post "/signup", to: "users#create"

  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"

  post "/save", to: "locations#create"

end
