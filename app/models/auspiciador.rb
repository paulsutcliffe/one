class Auspiciador < ActiveRecord::Base
  attr_accessible :link, :logo

  mount_uploader :logo, LogoUploader
end
