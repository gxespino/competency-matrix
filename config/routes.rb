Rails.application.routes.draw do
  root 'matrices#new'

  resources :matrices, only: [:new]
  resource :competency_records, only: [:update]

  devise_for :users
end
