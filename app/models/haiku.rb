class Haiku < ActiveRecord::Base

  attr_accessible :line_1, :line_2, :line_3

  validates :line_1, :line_2, :line_3, :presence => true

end
