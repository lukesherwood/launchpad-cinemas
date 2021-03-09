Rails.application.routes.draw do
  resources :orders
  resources :movies
  resources :showings
  resources :auditoria
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get '/', to: "application#index"
end
