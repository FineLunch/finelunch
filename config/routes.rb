Rails.application.routes.draw do
  devise_for :users, 
    path: 'auth',
    controllers:
      {
        sessions: 'sessions',
        passwords: 'passwords',
        registrations: 'registrations',
      }

  devise_scope :user do
    get 'login', to: 'sessions#new'
    get 'register', to: 'registrations#new'
    get 'forgot_password', to: 'passwords#new'
    get 'reset_password', to: 'passwords#edit'
  end
  root to: 'dashboard#index'
  get 'dashboard', to: "dashboard#index", as: 'dashboard'
  # get 'pages/icons'
  # get 'pages/profile'
  # get 'pages/tables'
  # get 'login', to: 
  # get 'register'
  # get 'pages/upgrade'
end
