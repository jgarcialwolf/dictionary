Rails.application.routes.draw do

  root "pages#index"
  resources :meanings
  get "tests", to: "tests#index"
  get "signup", to: "users#new"
  resources :users, except: [:new]
  get "login", to: "sessions#new"
  post "login", to: "sessions#create"
  delete "logout", to: "sessions#destroy"
  get "search", to: "meanings#new"

end
