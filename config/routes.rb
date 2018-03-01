Rails.application.routes.draw do
  resources :users, only: [:create, :new, :show]
  resources :sessions, only: [:create, :destroy, :new]
end
