# frozen_string_literal: true

Rails.application.routes.draw do
  namespace :admin do
    root to: "posts#index"
    resources :users
    resources :posts
  end

  root to: "posts#index"
  resources :posts, only: [:index]
end
