class Tag < ActiveRecord::Base

  attr_accessible :tag, :tagable_id, :tagable_type

  validates :tag, :tagable_id, :tagable_type, :presence => true
  validates :tag, :uniqueness => true

  has_and_belongs_to_many :posts

  def blogs
    Blog.where()
  end

end