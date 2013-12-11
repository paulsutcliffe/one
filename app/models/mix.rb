class Mix < ActiveRecord::Base
  attr_accessible :soundcloud_link

  default_scope  { order("created_at DESC") }
end
