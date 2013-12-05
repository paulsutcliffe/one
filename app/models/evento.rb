class Evento < ActiveRecord::Base
  attr_accessible :fecha, :flyer, :link, :titulo

  mount_uploader :flyer, FlyerUploader
end
