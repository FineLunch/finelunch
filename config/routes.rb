Rails.application.routes.draw do
  
  devise_for :users, 
    path: 'auth',
    controllers:
      {
        sessions: 'auth/sessions',
        passwords: 'auth/passwords',
        registrations: 'auth/registrations',
      }

  devise_scope :user do
    get 'login', to: 'auth/sessions#new'
    get 'register', to: 'auth/registrations#new'
    get 'forgot_password', to: 'auth/passwords#new'
    get 'reset_password', to: 'auth/passwords#edit'
  end
  root to: 'dashboard#index'
  get 'dashboard', to: "dashboard#index", as: 'dashboard'

  resources :users, except: [:show]
  resources :dish_types, except: [:show]
  resources :dishes
  # get 'pages/icons'
  # get 'pages/profile'
  # get 'pages/tables'
  # get 'login', to: 
  # get 'register'
  # get 'pages/upgrade'
end
