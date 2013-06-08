class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.string :tag
      t.string :tagable_type
      t.integer :tagable_id
      t.timestamps
    end
  end
end
