Rails.application.routes.draw do
  devise_for :users
  resources :tweets do
    resources :comments, only: [:create, :destroy]
  end
  resources :users, only: :show
  root 'tweets#index'
  resources :likes, only: [:create, :destroy]
  resources :ranking, only: :index
  resources :notifications, only: :index
end
