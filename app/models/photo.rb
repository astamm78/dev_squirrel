class Photo < ActiveRecord::Base

  attr_accessible :title, :description, :image, :image_file_name

  has_many :tags, :as => :tagable

  validates :title, :image, :presence => true

  has_attached_file :image, styles: {
    thumb:    '100x100>',
    square:   '200x200>',
    medium:   '300x300>',
    large:    '600x600>'
  }

  def previous
    Photo.where("id < ?", self.id).reverse.first
  end

  def next
    Photo.where("id > ?", self.id).first
  end

end