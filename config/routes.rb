Rails.application.routes.draw do
  resources :custom_messages
  resources :default_messages
  resources :goals
  resources :profiles
  devise_for :admins, controllers: { registrations: "registrations"}
  devise_for :users
  root to: "goals#index"
end
