Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # A user can see the list of cocktails
  root to: 'cocktails#index'
  get 'cocktails', to: 'cocktails#index'

  # A user can create a new cocktail
  get 'cocktails/new', to: 'cocktails#new'
  post 'cocktails/', to: 'cocktails#create'

  # A user can see the details of a given cocktail, with the dose needed for each ingredient
  get 'cocktails/:id', to: 'cocktails#show'


  # GET "cocktails/new"
  # POST "cocktails"

end
