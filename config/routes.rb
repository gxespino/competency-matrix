Rails.application.routes.draw do
  root 'matrices#new'

  resources :matrices
  resources :records

  devise_for :users
end
