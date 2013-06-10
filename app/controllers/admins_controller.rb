class AdminsController < ApplicationController

  def index
    @title = "Admin Homepage"
    @body_class = "admin"
    @post = Post.new
  end

end