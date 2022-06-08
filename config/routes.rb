Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :lessons do
    resources :reviews, only: [:create]
  end

  patch ':id/accept_booking', to: 'pages#accept_booking', as: 'accept_booking'

  resources :questions, only: [] do
    resources :answers, only: [:create]
  end

  resources :chatrooms, only: [:show] do
    resources :messages, only: :create
  end
  get 'dashboard', to: 'pages#dashboard'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
