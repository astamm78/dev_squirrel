class DevController < ApplicationController

  def index
    @title = "My Development Projects"
    @body_class = "dev"
  end

end