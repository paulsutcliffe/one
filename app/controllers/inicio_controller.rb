class InicioController < ApplicationController
  def index
    @eventos = Evento.limit(2)
    @contacto = Contacto.new
  end
end
