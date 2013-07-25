class TweetFix < ActiveRecord::Migration
  def change
    remove_column :tweets, :tweet_id
    add_column :tweets, :tweet_id, :bigint
  end
end