class CreateCommenters < ActiveRecord::Migration
  def change
    create_table :commenters do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :password_digest
      t.timestamps
    end
  end
end
