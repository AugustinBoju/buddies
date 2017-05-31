Rails.application.routes.draw do
  devise_for :users
  root 'pages#home'
  resources :users, only: [:index, :show] do
    resources :requests, only: [:create], shallow:true
  end
  resources :user_interests, only: [:create]
  resources :requests, only: [:index, :show, :update], shallow:true
  resources :conversations do
    resources :messages
  end
end
