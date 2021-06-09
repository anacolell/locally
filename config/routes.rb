Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: "registrations" }
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/search', to: 'pages#search'
  resources :users, only: [:show, :index] do
    resources :conversations, only: :create
  end
  resources :profiles, only: [:index, :show, :edit, :update]
  resources :user_interests, only: [:new, :create, :index, :show, :destroy]
  resources :recommendations, only: [:new, :create, :index, :destroy] do
    resources :bookmarks, only: [:new, :create, :index]
    resources :reviews, only: [:new, :create, :show, :edit, :update]
  end
  resources :bookmarks, only: [:destroy]
  resources :conversations, only: [:show, :index, :destroy] do
    resources :messages, only: :create
    resources :meetups, only: [:new, :create]
  end
  resources :meetups, only: [:edit, :update, :destroy, :show, :index]
end
