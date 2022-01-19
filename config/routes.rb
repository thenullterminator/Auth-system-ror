Rails.application.routes.draw do
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
