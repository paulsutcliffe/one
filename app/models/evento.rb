class Evento < ActiveRecord::Base
  attr_accessible :fecha, :flyer, :link, :titulo

  default_scope  { order("created_at DESC") }

  mount_uploader :flyer, FlyerUploader
end
