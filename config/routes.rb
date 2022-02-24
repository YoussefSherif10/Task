Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  get "/" , to: "users#index"
  get "/user/:id" , to: "users#show"
  delete "/user/destroy/:id", to: "users#destroy"
  put "/users/:id/name/:name", to: "users#update"
  post "/user/new/name/:name", to: "users#create"

  get "/lists" , to: "lists#index"
  get "/list/:id" , to: "lists#show"
  delete "/list/:id", to: "lists#destroy"
  put "/list/update", to: "lists#update"
  post "/list/", to: "lists#create"
end
