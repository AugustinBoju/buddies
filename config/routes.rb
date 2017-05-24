Rails.application.routes.draw do
  devise_for :users
  root 'pages#home'
  resources :users, only: [:index, :show] do
    resources :requests, only: [:create], shallow:true
    resources :user_interests, only: [:create]
  end
  resources :requests, only: [:index, :update], shallow:true
end
