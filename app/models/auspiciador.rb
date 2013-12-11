class Auspiciador < ActiveRecord::Base
  attr_accessible :link, :logo

  default_scope  { order("created_at DESC") }

  mount_uploader :logo, LogoUploader
end
