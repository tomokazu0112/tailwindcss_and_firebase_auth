# frozen_string_literal: true

Rails.application.routes.draw do
  namespace :admin do
    resources :users
    resources :posts
  end

  resources :posts, only: [:index]
end
