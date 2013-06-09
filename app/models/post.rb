class Post < ActiveRecord::Base

  attr_accessible :title, :body

  validates :title, :body, :presence => true

  has_and_belongs_to_many :tags

  self.per_page = 4

end
