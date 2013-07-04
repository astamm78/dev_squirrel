class Photo < ActiveRecord::Base

  attr_accessible :title, :description, :image, :image_file_name,
                  :camera, :taken_at, :exposure, :aperture

  validates :image, :presence => true

  has_attached_file :image, styles: {
    thumb:    '200x200>',
    large:    '920x920>'
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
    self.taken_at   = exif.date_time_original
    self.exposure   = exif.exposure_time.to_s
    self.aperture   = exif.f_number.to_f
    self.focal      = exif.focal_length.to_s.gsub(/\/1/, "")
  end

end