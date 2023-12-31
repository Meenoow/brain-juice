Rails.application.routes.draw do
  #get 'dashboard/index'
  get 'dashboard', to: 'dashboard#index', as: :dashboard
  devise_for :users, path: 'auth', path_names: { sign_in: 'login', sign_out: 'logout' }

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "home#index"
  resources :notes
  resources :dashboard
end
