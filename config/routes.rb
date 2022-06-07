Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :lessons do
    resources :bookings, only: [:edit, :update]
  end

  resources :questions, only: [] do
    resources :answers, only: [:create]
  end

  get 'dashboard', to: 'pages#dashboard'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
