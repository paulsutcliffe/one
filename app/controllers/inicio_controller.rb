class InicioController < ApplicationController
  def index
    @eventos = Evento.limit(2)
    @contacto = Contacto.new
    @auspiciadores = Auspiciador.all
    @mix = Mix.limit(1)
  end
end
