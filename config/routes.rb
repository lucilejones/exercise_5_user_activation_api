Rails.application.routes.draw do
  # get 'users/index'
  get '/users', to: 'users#index'

  put '/users/:id/activate', to: 'users#update'
  put '/users/:id/deactivate', to: 'users#update'

  get '/posts', to: 'posts#index'
  post '/posts', to: 'posts#create'
  # should the route for posts actually be nested in users?
end
