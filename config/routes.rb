Rails.application.routes.draw do
  get "/goals/:id/complete_goal", to: "goals#complete_goal"

  get "goals/current_goal", to: "goals#current_goal"

  resources :custom_messages
  resources :default_messages
  resources :goals
  resources :profiles, :except => [:index, :new]
  devise_for :users
  
  root to: "goals#current_goal"
end
