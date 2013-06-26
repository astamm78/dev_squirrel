class AdminsController < ApplicationController

  def index
    @title = "Admin Homepage"
    @body_class = "admin"
    @post = Post.new
    @photo = Photo.new
  end

end