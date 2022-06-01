Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get 'dashboard', to: 'pages#dashboard'

  resources :records, only: [:index, :new, :create]
  resources :profiles, only: [:update]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get 'profiles/edit', to: 'profiles#edit'
  get 'profile', to: 'profiles#show'
end
