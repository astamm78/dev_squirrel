class ChangeTweetTable < ActiveRecord::Migration
  def change
    remove_column :tweets, :tweet_id
    add_column :tweets, :tweet_id, :string
  end
end
