Rails.application.routes.draw do
  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register', edit: 'settings' }
  resources :apparats
  resources :users do
    resources :apparats_permits, only: [:create, :update, :destroy]
    resources :companies_permits, only: [:create, :update, :destroy]
  end
  resources :companies
  root to: "apparats#index"
end
