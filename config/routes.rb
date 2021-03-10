Rails.application.routes.draw do
  
  resources :movies
  resources :showings do 
    resources :orders do
      resources :users
    end
  end
  resources :auditoria
  get '/users/admin', to: 'users#admin'
  get '/', to: "application#index"
end
