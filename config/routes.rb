# frozen_string_literal: true

Rails.application.routes.draw do
  root "firebase#new"

  get    "/login",    to: "firebase#new"
  post   "/login",    to: "sessions#create"
  delete "/logout",   to: "sessions#destroy"
  post   "/accounts", to: "accounts#create"
  delete "/accounts", to: "accounts#destroy"

  namespace :admin do
    root to: "posts#index"
    resources :users, only: [:index]
    resources :posts
  end

  resources :posts, only: [:index]
end
