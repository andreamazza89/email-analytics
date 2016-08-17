Rails.application.routes.draw do
  get 'analytics/index'

  resources :emails, only: :create
  resources :analytics, only: :index
end
