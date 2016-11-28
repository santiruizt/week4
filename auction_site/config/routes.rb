Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/', to: 'site#home'
  get '/users', to: 'users#index'
  get '/users/new', to: 'users#new'
  get '/users/:id', to: 'users#show'

  post '/users', to: 'users#create'

  delete '/users/:id/delete', to: 'users#destroy'

  get '/products', to: 'products#index', as: :user_products
  get '/users/:user_id/products/new', to: 'products#new'
  get '/users/:user_id/products/show', to: 'products#show'
  post '/users/:user_id/products', to: 'products#create'

end
