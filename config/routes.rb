Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :cards do
    resources :favorites, only: [:create]
  end
  resources :favorites, only: :destroy
  resources :decks, only: [:create, :update, :destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
