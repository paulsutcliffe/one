class UsuariosController < InheritedResources::Base
  def update
    if params[:usuario][:password].blank?
      params[:usuario].delete(:password)
      params[:usuario].delete(:password_confirmation)
    end
  end
end

