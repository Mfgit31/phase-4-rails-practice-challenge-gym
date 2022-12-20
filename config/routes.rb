Rails.application.routes.draw do
  resources :memberships, only: [:create, :index, :show]
  resources :gyms, only: [:show, :destroy, :index]
  resources :clients, only: [:show, :index]
  
end
