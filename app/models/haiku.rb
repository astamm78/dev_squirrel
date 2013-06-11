class Haiku < ActiveRecord::Base

  attr_accessible :line_1, :line_2, :line_3

  validates :line_1, :line_2, :line_3, :presence => true

  has_many :tags, :as => :tagable

  def self.stale
    Time.now - self.order("updated_at DESC").last.updated_at > 60 * 60 * 3
  end

end
