Rails.application.routes.draw do
  get 'likes/create'
  get 'likes/destroy'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :tweets do
    resources :comments, only: [:create, :destroy]
  end
  resources :users, only: :show
  root 'tweets#index'
  resources :likes, only: [:create, :destroy]
  resources :ranking, only: :index
  resources :notifications, only: :index
end
