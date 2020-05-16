Rails.application.routes.draw do
  devise_for :users
  root to: 'memos#index'
  resources :users, only: [:new, :show]
  resources :memos, only: [:index, :create, :edit, :update, :destroy]
  
end
