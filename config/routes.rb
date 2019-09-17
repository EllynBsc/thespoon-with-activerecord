Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # verb '/path', to: 'controller_name#action'


  # CRUD
  # CREATE
  # READ ALL
  get '/restaurants', to: 'restaurants#index'
  # READ ONE
  get '/restaurants/:id', to: 'restaurants#show', as: :restaurant

  # UPDATE
  # DELETE

  delete '/restaurants/:id', to: 'restaurants#destroy'
end
