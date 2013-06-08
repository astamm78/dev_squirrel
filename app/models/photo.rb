class Photo < ActiveRecord::Base

  attr_accessible :title, :description, :image

  has_many :tags, :as => :tagable

  validates :title, :description, :image, :presence => true

end
