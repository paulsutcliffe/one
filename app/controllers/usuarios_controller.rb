class UsuariosController < InheritedResources::Base
  before_filter :authenticate_admin!
  def update
    if params[:usuario][:password].blank?
      params[:usuario].delete(:password)
      params[:usuario].delete(:password_confirmation)
    end
  end
end

