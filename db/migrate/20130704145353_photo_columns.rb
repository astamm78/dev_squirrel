class PhotoColumns < ActiveRecord::Migration
  def change
    add_column :photos, :camera, :string
    add_column :photos, :taken_at, :datetime
    add_column :photos, :exposure, :string
    add_column :photos, :aperture, :string
    add_column :photos, :focal, :string
  end
end
