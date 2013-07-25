class Tweet < ActiveRecord::Base

  attr_accessible :tweet_id, :tweet, :updated_at

  validates :tweet_id, :tweet, presence: true
  validates :tweet, uniqueness: true

  default_scope :order => 'tweet_id DESC'

  def self.stale?
    if self.count == 0
      true
    else
      Time.now - self.first.updated_at > 60 * 15
    end
  end

end