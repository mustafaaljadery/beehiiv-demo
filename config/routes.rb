Rails.application.routes.draw do
  resources :entries, only: [:create, :new, :index]

  root 'home#index'
  get '/ticket', to: 'home#ticket'
end