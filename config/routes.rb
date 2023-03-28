Rails.application.routes.draw do
  resources :posts
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "bookings#index"

  # bookings related routes
  get '/bookings', to: 'bookings#index'
  get '/bookings/new', to: 'bookings#new'
  get '/bookings/:id', to: 'bookings#show'
  get '/bookings/:id/edit', to: 'bookings#edit'
  post '/bookings', to: 'bookings#create'
  put '/bookings/:id', to: 'bookings#update'
  delete '/bookings/:id', to: 'bookings#destroy'

  # customers related routes
  get '/customers', to: 'customers#index'
  get '/customers/new', to: 'customers#new'
  get '/customers/:id', to: 'customers#show'
  get '/customers/:id/edit', to: 'customers#edit'
  post '/customers', to: 'customers#create'
  put '/customers/:id', to: 'customers#update'
  delete '/customers/:id', to: 'customers#destroy'

  get '/locations', to: 'locations#index'
  get '/pricings', to: 'durations#index'

  # get '/patients/:id', to: 'patients#show'
end
