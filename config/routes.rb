One::Application.routes.draw do
  devise_for :usuarios

  devise_for :admins

  resources :auspiciadores


  resources :eventos


  resources :mixes


  resources :contactos


  root to: 'inicio#index'

  get "inicio/index"

end
