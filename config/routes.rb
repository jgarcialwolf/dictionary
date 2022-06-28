Rails.application.routes.draw do

  root "pages#index"
  resources :meanings
  get "signup", to: "users#new"
  resources :users, except: [:new]

end
