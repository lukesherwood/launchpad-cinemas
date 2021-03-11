Rails.application.routes.draw do

  resources :showings, only: [:new, :create, :edit, :update] do 
    resources :orders, only: [:new, :create, :index]
  end
  resources :auditoria, only: [:new, :create, :update]

  get '/users/admin', to: 'users#admin'
  get '/', to: "application#index"
end
