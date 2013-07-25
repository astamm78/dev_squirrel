class Tweet < ActiveRecord::Base

  attr_accessible :tweet_id, :tweet

  validates :tweet_id, :tweet, presence: true
  validates :tweet_id, uniqueness: true

  def self.stale?
    if self.count == 0
      true
    else
      Time.now - self.order("updated_at ASC").last.updated_at > 60 * 15
    end
  end

end