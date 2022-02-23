Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  get "/" , to: "users#index"
  get "/user/:id" , to: "users#show"
  delete "/user/:id", to: "users#destroy"
  post "/user/update", to: "users#update"
  post "/user/new", to: "users#create"

  get "/lists" , to: "lists#index"
  get "/list/:id" , to: "lists#show"
  delete "/list/:id", to: "lists#destroy"
  post "/list/update", to: "lists#update"
  post "/list/new", to: "lists#create"
end
