Rails.application.routes.draw do
  resources :emails, only: :create
end
