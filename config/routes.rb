Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # get 'dashboard', to: 'pages#dashboard'

  resources :records
  resources :profiles, only: [:update]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get 'profiles/edit', to: 'profiles#edit'
  get 'profile', to: 'profiles#show'
  get '/records/:id/visitor', to: 'records#visitor'
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
end
