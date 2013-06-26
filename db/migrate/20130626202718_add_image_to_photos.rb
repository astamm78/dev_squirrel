class AddImageToPhotos < ActiveRecord::Migration
  def change
    remove_column :photos, :image
    add_attachment :photos, :image
  end
end
