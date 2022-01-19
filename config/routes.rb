Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # get "/", to: "home#index"
  # Defines the root path route ("/")
  # root "articles#index"
  root "home#index"

  get 'signup/', to:'signup#index'
  post 'signup/', to:'signup#create'

  get 'login/', to:'session#index'
  post 'login/', to:'session#create'
  delete 'logout/', to:'session#destroy'

  get 'password/', to:'password#index'
  patch 'password/', to:'password#update'

  get 'users/', to:'users#index'

end
