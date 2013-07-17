class Haiku < ActiveRecord::Base

  attr_accessible :line_1, :line_2, :line_3, :updated_at

  validates :line_1, :line_2, :line_3, :presence => true

  def self.stale
    if self.count == 0
      true
    else
      Time.now - self.order("updated_at ASC").last.updated_at > 1#60 * 60 * 3#hours
    end
  end

end
