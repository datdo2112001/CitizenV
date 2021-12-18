Rails.application.routes.draw do
  get 'locals/new'
  get 'citizens/new'
  root 'sessions#new'
  get '/signup', to: 'users#new'
  get '/alluser', to: 'users#index'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  get '/showcitizen', to: 'citizens#index'
  get '/overall', to: 'citizens#overall'
  get 'permission/:id', to: 'users#permission'
  get 'detail/:code', to: 'citizens#detail'
  get '/showlocal', to: 'locals#index'
  
  resources :users
  resources :citizens
  resources :locals
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
