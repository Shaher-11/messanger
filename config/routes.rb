Rails.application.routes.draw do
  root 'hangouts#index'
  devise_for :users

  resources :messages, only: [:create]
end
