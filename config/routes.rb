Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # A user can see the list of cocktails
  # get 'cocktails',                  to: 'cocktails#index'

  # # A user can create a new cocktail
  # get 'cocktails/new',              to: 'cocktails#new'
  # post 'cocktails/',                to: 'cocktails#create'

  # A user can see the details of a given cocktail, with the dose needed for each ingredient
  # get 'cocktails/:id',              to: 'cocktails#show'

  # A user can add a new dose (ingredient/description pair) to an existing cocktail
  # get 'cocktails/:id/doses/new',    to: 'doses#new'
  # post 'cocktails/:id/doses',       to: 'doses#create'


  resources :cocktails, only: [:index, :new, :create, :show] do
    resources :doses, only: [:new, :create]
  end

  root                              to: 'cocktails#index'
  delete 'doses/:id',               to: 'doses#destroy', as: 'delete_dose'




end
