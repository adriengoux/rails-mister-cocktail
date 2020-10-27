Rails.application.routes.draw do
  # get 'doses/index'
  # get 'doses/new'
  # get 'doses/create'
  # get 'cocktails/index'
  # get 'cocktails/create'
  # get 'cocktails/new'
  # get 'cocktails/show'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :cocktails, only: [:index, :show, :new, :create] do
    resources :doses, only: [:index, :new, :create, :destroy]
    # resources :ingredients, only: [ :new, :create ]
  end
#   resources :doses, only: [ :destroy ]
#   resources :ingredients, only: [ :index, :destroy ]
end
