class Contacto < ActiveRecord::Base
  attr_accessible :email, :mensaje, :nombre, :telefono

  default_scope  { order("created_at DESC") }
end
