Rails.application.routes.draw do
  get 'doses/new'
  get 'doses/create'
  root to: 'cocktails#index'

  resources :cocktails, only: [:index, :show, :new, :create] do
    resources :doses, only: [:new, :create]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
