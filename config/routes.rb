Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  get 'home', to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :producers do
    resources :reviews, only: [ :new, :create ]
  end
  resources :reviews, only: [ :destroy ]
end
