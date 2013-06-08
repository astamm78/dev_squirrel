class ChangePhotos < ActiveRecord::Migration
  def change
    add_column :photos, :title, :string
    add_column :photos, :description, :string
    add_column :photos, :image, :string
  end
end
