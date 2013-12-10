class ContactoMailer < ActionMailer::Base
  def mensaje_recibido(contacto)
    @contacto = contacto
    mail(:to => "info@kosmyka.com", :subject => "Mensajes desde la web", :replay_to => contacto.email, :from => "info@kosmyka.com")
  end
end
