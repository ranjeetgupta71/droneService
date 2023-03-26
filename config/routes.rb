Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get '/bookings', to: 'bookings#index'
  get '/bookings/new', to: 'bookings#new'
  get '/bookings/:id', to: 'bookings#show'
  get '/bookings/:id/edit', to: 'bookings#edit'

  get '/customers', to: 'customers#index'
  get '/customers/new', to: 'customers#new'
  get '/customers/:id', to: 'customers#show'
  get '/customers/:id/edit', to: 'customers#edit'

  # get '/patients/:id', to: 'patients#show'

end
