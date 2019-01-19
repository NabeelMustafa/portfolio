Rails.application.routes.draw do
  devise_for :users
  resources :users
  resources :portfolios
  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'
  resources :blogs do
    member do
      get :toogle_status
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'pages#home'
end
