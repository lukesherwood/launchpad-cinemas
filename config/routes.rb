Rails.application.routes.draw do
  resources :orders
  resources :movies
  resources :showings
  resources :auditoria
  get '/users/admin', to: 'users#admin'
  get '/', to: "application#index"
end
