Rails.application.routes.draw do

  root to: 'analytics#index'

  resources :analytics, only: :index

  resources :email_events, only: :create

end
