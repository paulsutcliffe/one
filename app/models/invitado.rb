class Invitado < ActiveRecord::Base
  attr_accessible :nombre

  belongs_to :lista
end
