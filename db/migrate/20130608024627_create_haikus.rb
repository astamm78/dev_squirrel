class CreateHaikus < ActiveRecord::Migration
  def change
    create_table :haikus do |t|
      t.string :line_1
      t.string :line_2
      t.string :line_3
      t.timestamps
    end
  end
end
