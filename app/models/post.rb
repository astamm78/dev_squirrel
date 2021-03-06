class Post < ActiveRecord::Base

  attr_accessible :title, :body

  validates :title, :body, :presence => true

  has_and_belongs_to_many :tags

  before_save :clean_html, :line_breaks

  default_scope :order => 'created_at DESC'

  self.per_page = 4

  def posted_on
    time = self.created_at - 6.hours
    time.strftime("%B %d, %Y")
  end

  def tweet
    Twitter.update("DevSquirrel: #{self.title}, http://www.devsquirrel.com/posts/#{self.id}")
  end

  private
  def clean_html
    self.body = Sanitize.clean(body, Sanitize::Config::BASIC)
  end

  def line_breaks
    self.body = self.body.gsub("\n", "</p><p>")
  end

end
