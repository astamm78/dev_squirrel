class Photo < ActiveRecord::Base

  attr_accessible :title, :description, :image, :image_file_name,
                  :camera, :taken_at, :exposure, :aperture

  has_many :tags, :as => :tagable

  validates :image, :presence => true

  has_attached_file :image, styles: {
    thumb:    '100x100>',
    square:   '200x200>',
    medium:   '300x300>',
    large:    '600x600>'
  }

  after_image_post_process :copy_exif_data

  def previous
    Photo.where("id < ?", self.id).reverse.first
  end

  def next
    Photo.where("id > ?", self.id).first
  end

  private
  def copy_exif_data
    exif =EXIFR::JPEG.new(self.image.queued_for_write[:original].path)
    self.camera     = exif.model
    self.taken_at   = exif.date_time
    self.exposure   = exif.exposure_time.to_s
    self.aperture   = exif.f_number.to_f
  end

end