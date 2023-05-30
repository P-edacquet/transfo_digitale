Rails.application.routes.draw do
  devise_for :users
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  
  get 'pages/home'
  get 'pages/map'
  controller :pages do
    get :home, to: 'pages#home', as: :accueil
    get :map, to: 'pages#map', as: :map
  end
  # Defines the root path route ("/")
  root "pages#home"
end
