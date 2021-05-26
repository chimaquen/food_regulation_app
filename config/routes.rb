Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'notices#index'
  get '/notices/new', to: 'notices#new' 
  post '/notices', to: 'notices#create' 
  delete '/notices/:id', to: 'notices#destroy'
end
