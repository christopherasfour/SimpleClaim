Rails.application.routes.draw do
  get 'welcome/index'

  resources :users, only: [:new, :create]
  get 'home', :to => "sessions#welcome"
  root :to => "index#index"

  get 'claim/new', to: 'sessions#claim'
  post 'claim', to: 'sessions#welcome'
  get 'register', to: 'users#new'
  post 'login', to: 'sessions#create'
  get 'login', to: 'sessions#new'
  delete 'login', to: 'sessions#destroy'

  get 'welcome', to: 'sessions#welcome'
  post 'welcome', to: 'claim#create'
  get 'authorized', to: 'sessions#page_requires_login'
  get 'claim', to:  'sessions#claim'
  post 'claim', to: 'sessions#claim'

  get 'welcome_lawyer', to: 'sessions#lawyer_welcome'

  post 'lawyers', to: 'lawyers#create'
  get 'login_lawyer', to: 'sessions#login_lawyer'
  post 'login_lawyer', to: 'sessions#create_lawyer'
  get 'register_lawyer', to: 'lawyers#new'

  resources :claim
  # map '/' to be a redirect to '/claim'
  #root :to => redirect('/claim')
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
