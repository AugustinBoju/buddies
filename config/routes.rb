Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :users, only [:index, :show] do
    resources :requests, only [:index, :create]
  end
end
