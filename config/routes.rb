Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/search', to: 'pages#search'
  resources :users, only: [:show, :index]
  resources :profiles, only: [:index, :show, :edit, :update]
  resources :user_interests, only: [:new, :create, :index, :show, :destroy]
  # resources :recommendations, only: [:new, :create, :index, :destroy] do
  #   resources :bookmarks, only: [:new, :create, :destroy, :index]
  #   resources :reviews, only: [:new, :create, :show, :edit, :update]
  # end
  # resources :conversations do
  #   resources :messages, only: [:new, :create, :index, :destroy]
  #   resources :meetups, only: [:new, :create, :edit, :update, :index, :show]
  #   resources :bookmarks, only: [:create, :new]
  # end

end
