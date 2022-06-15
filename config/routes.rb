# frozen_string_literal: true

Rails.application.routes.draw do
  root 'static#index'
  namespace :api do
    namespace :v1, defaults: { format: 'json' } do
      resources :greetings
    end
  end
end
