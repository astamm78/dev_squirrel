class Link < ActiveRecord::Base
  # attr_accessible :title, :body

  has_many :tags, :as => :tagable

end
