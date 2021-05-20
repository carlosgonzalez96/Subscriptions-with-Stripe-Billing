require 'sidekiq/web'

Rails.application.routes.draw do
  mount StripeEvent::Engine, at: '/webhooks/stripe'

  resources :movies
  get '/privacy', to: 'home#privacy'
  get '/terms', to: 'home#terms'
authenticate :user, lambda { |u| u.admin? } do
  mount Sidekiq::Web => '/sidekiq'

  namespace :madmin do
    resources :users
    namespace :active_storage do
      resources :variant_records
    end
    namespace :active_storage do
      resources :attachments
    end
    namespace :active_storage do
      resources :blobs
    end
    resources :services
    resources :announcements
    resources :notifications
    root to: "dashboard#show"
  end
end

  resources :notifications, only: [:index]
  resources :announcements, only: [:index]
  devise_for :users, controllers: { omniauth_callbacks: "users/omniauth_callbacks" }
  
  resource :card
  resource :pricing, controller: :pricing
  resource :subscription do
    patch :resume
  end
  resources :payments
  resources :charges

  root to: 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
