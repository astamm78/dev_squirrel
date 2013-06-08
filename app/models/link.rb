class Link < ActiveRecord::Base

  attr_accessible :name, :url

  validates :name, :url, :presence => true
  validates :url, :format => { :with    => /.{2,}\.[a-zA-Z]{2,4}$/,
                               :message => "not a valid url" }

  has_many :tags, :as => :tagable

end
