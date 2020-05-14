Rails.application.routes.draw do
  devise_for :users
  root to: 'users#index'
  resources :users, only: [:index, :new, :create, :show]
  resources :memos, only: [:index, :create, :show, :edit, :update, :destroy]
  
  # , only: [:index, :new, :create, :show, :edit, :update, :destroy]
  
end
