class Tag < ActiveRecord::Base

  attr_accessible :tag, :tagable_id, :tagable_type

  validates :tag, :tagable_id, :tagable_type, :presence => true

end