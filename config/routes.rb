Rails.application.routes.draw do
  devise_for :users
  get "/profile", to: 'pages#profile'
  
  root to: 'pages#home'
  resources :cards do
    resources :favorites, only: [:index, :create]
    resources :comments, only: [:create, :update]
  end
  resources :comments, only: :destroy
  resources :favorites, only: :destroy
  resources :decks
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
