class Tag < ActiveRecord::Base

  attr_accessible :tag, :tagable_id, :tagable_type

  validates :tag, :tagable_id, :tagable_type, :presence => true
  validates :tag, :uniqueness => true

  belongs_to :tagable, :polymorphic => true

  def blogs
    Blog.where()
  end

end