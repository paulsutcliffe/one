class ListasController < InheritedResources::Base
  before_filter :authenticate_usuario!, except: [:index, :show, :destroy]

  belongs_to :evento, :usuario, :optional => true

  def new
    @evento = Evento.find(params[:evento_id])
    @evento.listas.each do |lista|
      if lista.usuario_id == current_usuario.id
        redirect_to evento_lista_path(@evento, lista)
      end
    end
    @lista = Lista.new
  end

  def create
    @lista= Lista.new(params[:lista])
    @usuario = Usuario.find(params[:lista][:usuario_id])
    @evento = Evento.find(params[:evento_id])
    @usuario.listas << @lista
    @evento.listas << @lista
    create! { evento_lista_path(@evento, @lista)}
  end

  def index
    @listas = params[:usuario_id] ? Lista.where("usuario_id = ?", params[:usuario_id]) : Lista.all
  end
end
