class PostsTags < ActiveRecord::Migration
  def change
    create_table :posts_tags do |t|
      t.integer :post_id
      t.integer :tag_id
    end
  end
end
