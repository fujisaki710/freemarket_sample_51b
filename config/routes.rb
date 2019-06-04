Rails.application.routes.draw do
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  root 'items#index'
  resources :users, only: [:index, :edit, :update]
end
