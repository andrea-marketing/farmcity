Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  get 'home', to: 'pages#home'
  get 'profile', to: 'pages#profile'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :producers do
    resources :point_of_sales, only: [ :new, :create, :show, :destroy ]
    resources :products, only: %i[new create edit update destroy]
    resources :reviews, only:  %i[new create]
    resources :favorites, only: %i[create]
    collection do
      post :filter
    end

  end

  resources :reviews, only: [:destroy]
  resources :favorites, only: %i[index destroy]
  # resources :point_of_sales, only: [ :destroy ]
  resources :markets, only: [ :index, :show ]
  resources :posts, only: %i[index new create show edit update destroy]
end
