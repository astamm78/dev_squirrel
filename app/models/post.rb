class Post < ActiveRecord::Base

  attr_accessible :title, :body

  validates :title, :body, :presence => true

  has_many :tags, :as => :tagable

end
