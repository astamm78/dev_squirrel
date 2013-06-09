class Tag < ActiveRecord::Base

  attr_accessible :tag

  validates :tag, :presence => true
  validates :tag, :uniqueness => true

  has_and_belongs_to_many :posts

  def blogs
    Blog.where()
  end

end