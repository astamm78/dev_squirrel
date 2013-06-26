class Photo < ActiveRecord::Base

  attr_accessible :title, :description, :image

  has_many :tags, :as => :tagable

  validates :title, :description, :image, :presence => true

  has_attached_file :image, styles: {
    thumb: '100x100>',
    square: '200x200>',
    medium: '300x300>',
    large: '600x600>'
  }

end
