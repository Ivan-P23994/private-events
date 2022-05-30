Rails.application.routes.draw do
  devise_for :users
  devise_scope :user do
      # Redirests signing out users back to sign-in
      get "users", to: "devise/sessions#new"
    end
    
  resources :events

  root "events#index"
end
