Rails.application.routes.draw do


  resources :tickets, only: [:index, :create, :show]

  resources :clients, only: [:index, :create, :show]
  post "/login", to: "clients#login" 

  resources :employees, only: [:index, :create, :show]

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
