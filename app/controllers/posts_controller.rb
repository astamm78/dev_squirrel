class PostsController < ApplicationController

  def index
    @title = "DevSquirrel Blog"
    @posts = Post.paginate(:page => params[:page])
  end

end