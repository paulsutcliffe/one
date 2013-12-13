class Evento < ActiveRecord::Base
  attr_accessible :fecha, :flyer, :link, :titulo

  default_scope  { order("fecha DESC") }

  has_many :listas
  has_many :usuarios, :through => :listas

  mount_uploader :flyer, FlyerUploader
end
