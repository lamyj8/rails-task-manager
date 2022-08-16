Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

 # READ ALL
 get "tasks", to: "tasks#index"

 # READ ONE

 get "tasks/:id", to: "tasks#show", as: "task"

end
