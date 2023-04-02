Rails.application.routes.draw do
  resources :articles, only: [:index, :show]
  post "/login", to: SessionsController#create
  delete "/logout", to: SessionsController#destroy
  get "/me" , to: UsersController#show


end
