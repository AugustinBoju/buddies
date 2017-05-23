Rails.application.routes.draw do
  devise_for :users
  root 'pages#home'
  resources :users, only: [:index, :show] do
    resources :requests, only: [:index, :create], shallow:true
  end
end
