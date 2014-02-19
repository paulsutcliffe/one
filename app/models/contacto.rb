class Contacto < ActiveRecord::Base
  attr_accessible :email, :mensaje, :nombre, :telefono

  default_scope  { order("created_at DESC") }

  EMAIL_REGEX = /^[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,4}$/i

  validates :email, :nombre, :telefono, :presence => true
  validates :nombre, :length => { :maximum => 200 }
  validates :telefono, :length => { :maximum => 20 }
  validates :email, :length => { :maximum => 100 },
    :format => EMAIL_REGEX
end
