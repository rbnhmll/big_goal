Rails.application.routes.draw do
  get "/goals/:id/complete_goal", to: "goals#complete_goal"

  get "crossroads/papers", to: "crossroads#papers"
  get "goals/current_goal", to: "goals#current_goal"

  resources :custom_messages
  resources :default_messages
  resources :goals
  resources :profiles, :except => [:index, :new]
  devise_for :admins, controllers: { registrations: "registrations"}
  devise_for :users
  
  root to: "crossroads#papers"
end
