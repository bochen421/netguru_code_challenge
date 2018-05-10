Rails.application.routes.draw do
  root 'citations#index'
  resources :citations, only: [:index, :new, :create]
end
