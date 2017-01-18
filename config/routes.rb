Rails.application.routes.draw do
  resources :goals
  resources :profiles
  devise_for :admins
  devise_for :users
  root to: "home#index"
end
