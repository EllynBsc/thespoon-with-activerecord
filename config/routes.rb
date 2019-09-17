Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # verb '/path', to: 'controller_name#action'


  # CRUD
  # CREATE
  # 2 request
  # a get request to get a form, an empty instance of the restaurant model
  get '/restaurants/new', to: 'restaurants#new'
  # a post request to save the restauranst instance in the DB passing the params of the user
  post '/restaurants', to: 'restaurants#create'

  # READ ALL
  get '/restaurants', to: 'restaurants#index'
  # READ ONE
  get '/restaurants/:id', to: 'restaurants#show', as: :restaurant

  # UPDATE
  # edit => form
  get '/restaurants/:id/edit', to: 'restaurants#edit', as: :edit_restaurant
  # update => change the db
  patch '/restaurants/:id', to: 'restaurants#update'

  # DELETE
  delete '/restaurants/:id', to: 'restaurants#destroy'
end
