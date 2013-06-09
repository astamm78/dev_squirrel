class Post < ActiveRecord::Base

  attr_accessible :title, :body

  validates :title, :body, :presence => true

  has_many :tags, :as => :tagable

  self.per_page = 4

end
