class InicioController < ApplicationController
  def index
    @eventos = Evento.limit(2)
    if current_usuario
      @lista_evento_viernes = Lista.where("evento_id = ? AND usuario_id = ?", @eventos.first.id, current_usuario.id).first
      @lista_evento_sabado = Lista.where("evento_id = ? AND usuario_id = ?", @eventos.last.id, current_usuario.id).first
    end
    @contacto = Contacto.new
    @auspiciadores = Auspiciador.all
    @mix = Mix.limit(1)
  end
end
