Rails.application.routes.draw do
  devise_for :users
  devise_scope :user do
      # Redirests signing out users back to sign-in
      get "users", to: "devise/sessions#new"
  end

  get '/users/:id', to: 'users#show', as: 'user'
  

  resources :events

  root "events#index"
end
