class InicioController < ApplicationController
  def index
    @eventos = Evento.limit(2)
  end
end
