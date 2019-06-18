Rails.application.routes.draw do
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks', registrations: 'users/registrations' }
  devise_scope :user do
    get 'users/index', to: 'users/registrations#index'
  end
  root 'items#index'

  resources :items do
    member do
      get 'purchase', to: 'items#purchase'
      post 'pay', to: 'items#pay'
      get 'done', to: 'items#done'
    end
    collection do
      get 'search', to: 'items#search'
    end
  end
  resources :users do
    member do
      get 'profile', to: 'users#profile'
      get 'credit', to: 'users#credit'
      get 'logout', to: 'users#logout'
    end
  end

  resources :card, only: [:new, :show] do
    collection do
      post 'show', to: 'card#show'
      post 'pay', to: 'card#pay'
      post 'delete', to: 'card#delete'
    end
  end
end
