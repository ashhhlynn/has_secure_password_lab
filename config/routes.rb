Rails.application.routes.draw do

  resources :users
  resources :sessions
  get '/welcome', to: 'users#welcome'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
