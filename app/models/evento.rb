class Evento < ActiveRecord::Base
  attr_accessible :fecha, :flyer, :link, :titulo

  default_scope  { order("fecha DESC") }

  has_many :listas
  has_many :usuarios, :through => :listas

  validates :titulo, presence: true

  mount_uploader :flyer, FlyerUploader

  def usuario_tiene_lista(usuario)
    if usuario
      self.listas.includes(:usuario)
    end
  end
end
