class Post < ActiveRecord::Base

  attr_accessible :title, :body

  validates :title, :body, :presence => true

  has_and_belongs_to_many :tags

  self.per_page = 4

  def posted_on
    time = self.created_at - 6.hours
    time.strftime("%B %d, %Y")
  end

  def tweet
    Twitter.update("DevSquirrel: #{self.body}, http://www.devsquirrel.com/posts/#{self.id}")
  end

end
