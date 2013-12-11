class InicioController < ApplicationController
  def index
    @eventos = Evento.limit(2)
    @contacto = Contacto.new
    @auspiciadores = Auspiciador.all
  end
end
