class Evento < ActiveRecord::Base
  attr_accessible :fecha, :flyer, :link, :titulo

  default_scope  { order("fecha DESC") }

  mount_uploader :flyer, FlyerUploader
end
