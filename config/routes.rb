Rails.application.routes.draw do
  get 'welcome/index'

  resources :users, only: [:new, :create]
  get 'home', :to => "welcome#index"
  root :to => "welcome#index"
  get 'claim/new', to: 'sessions#claim'
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  get 'welcome', to: 'sessions#welcome'
  get 'authorized', to: 'sessions#page_requires_login'
  get 'claim', to:  'sessions#claim'
  post 'claim', to: 'sessions#claim'

  resources :claim
  # map '/' to be a redirect to '/claim'
  #root :to => redirect('/claim')
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
