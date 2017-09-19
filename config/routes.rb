Rails.application.routes.draw do
  root 'matrices#new'

  resources :matrices
end
