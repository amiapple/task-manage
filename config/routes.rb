Rails.application.routes.draw do
  devise_for :users
  root to: 'top#index'
  resources :list, only: [:create, :new, :edit, :update, :destroy] do
    resources :card, only: [:create, :new, :show, :edit, :update, :destroy]
  end
end