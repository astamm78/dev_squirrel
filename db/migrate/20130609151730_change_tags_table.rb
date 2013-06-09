class ChangeTagsTable < ActiveRecord::Migration
  def change
    remove_column :tags, :tagable_type
    remove_column :tags, :tagable_id
  end
end
