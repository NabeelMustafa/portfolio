Rails.application.routes.draw do
  resources :comments
  resources :myimages
  resources :profiles
  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register'}, :controllers => {:sessions => "sessions"}
  resources :users
  resources :portfolios
  get '/', to: 'pages#about'
  get 'contact', to: 'pages#contact'
  get 'delete/:id', to: 'portfolio#destroy'
  get '/blogs/topics/:topic', to: 'blogs#show_topic'
  resources :blogs do
    member do
      get :toogle_status
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'pages#about'
end
