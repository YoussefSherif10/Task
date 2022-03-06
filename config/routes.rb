Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  get "/" , to: "users#index"
  get "/user/:id" , to: "users#show"
  delete "/user/destroy/:id", to: "users#destroy"
  put "/users/:id/name/:name", to: "users#update"
  post "/user/new/name/:name", to: "users#create"

  get "/lists" , to: "todolists#index"
  get "/list/:user_id/:id" , to: "todolists#show"
  delete "/list/:id", to: "todolists#destroy"
  put "/list/update/:id/state/:state", to: "todolists#update"
  post "/list/new/user_id/:user_id/name/:name/description/:description", to: "todolists#create"

  get "/tasks" , to: "tasks#index"
  get "/task/:user_id/:id" , to: "tasks#show"
  delete "/task/:id", to: "tasks#destroy"
  put "/task/update/:id/state/:state", to: "tasks#update"
  post "/task/new/todolist_id/:todolist_id/name/:name/state/:state", to: "tasks#create"
end
