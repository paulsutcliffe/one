#coding: utf-8
class ContactosController < InheritedResources::Base
  before_filter :authenticate_admin!, :except => [:create]
  def create
    create! do |success, failure|
      success.html do
        ContactoMailer.mensaje_recibido(@contacto).deliver
  
        flash[:notice] = "Tu mensaje fue enviado con éxito"
        redirect_to root_path
      end
      failure.html do
        flash[:notice] = "No ha sido enviado el mensaje."
        redirect_to root_path
      end
    end
  end
end
