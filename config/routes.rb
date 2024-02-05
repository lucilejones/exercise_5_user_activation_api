Rails.application.routes.draw do
  # get 'users/index'
  get '/users', to: 'users#index'

  put '/users/:id/activate', to: 'users#update'
  put '/users/:id/deactivate', to: 'users#update'

  post '/posts/:user_id', to: 'posts#create'
end
