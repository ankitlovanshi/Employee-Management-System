Rails.application.routes.draw do
  get 'status/scaffold'
  get 'profiles/show'
  get 'profiles/update'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  get 'homes/index'
  devise_for :employees
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check
   resources :profiles
   resources :leaves
   resources :statuses
  # Defines the root path route ("/")
  root "homes#index"
end
