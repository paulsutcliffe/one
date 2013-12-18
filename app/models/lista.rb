class Lista < ActiveRecord::Base
  attr_accessible :invitados_attributes, :usuario_id

  belongs_to :usuario
  belongs_to :evento
  has_many :invitados

  accepts_nested_attributes_for :invitados, limit: 5

end
