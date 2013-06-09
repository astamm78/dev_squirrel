class HaikusController < ApplicationController

  def index
    @title = "Haikus"
    @body_class = "haiku"
  end

end