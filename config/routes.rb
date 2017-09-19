Rails.application.routes.draw do
  root 'matrices#new'

  resources :matrices

  devise_for :users
end
