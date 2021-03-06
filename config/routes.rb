One::Application.routes.draw do

  devise_for :usuarios, :controllers => { :omniauth_callbacks => "usuarios/omniauth_callbacks" }, :path => "usuarios", :path_names => { :sign_in => 'ingresar', :sign_out => 'salir', :password => 'secreto', :confirmation => 'verificacion', :unlock => 'desbloquear', :registration => 'registro', :sign_up => 'inscribirse' }
  scope "/cms" do
    resources :usuarios, only: [:index, :destroy]
  end
  resources :usuarios do
    resources :listas
  end

  devise_for :admins, :path => "cms", :path_names => { :sign_in => 'ingresar', :sign_out => 'salir', :password => 'secreto', :confirmation => 'verificacion', :unlock => 'desbloquear', :registration => 'registro', :sign_up => 'inscribirse' }

  resources :auspiciadores

  resources :eventos do
    resources :listas
  end

  resources :listas

  resources :mixes

  resources :contactos

  root to: 'inicio#index'

end
