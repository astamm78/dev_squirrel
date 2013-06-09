class PostsController < ApplicationController

  def index
    @title = "DevSquirrel Blog"
    @body_class = "blog"
    @posts = Post.paginate( :page => params[:page],
                            :order => 'created_at DESC')
  end

  def show
    @post = Post.find(params[:id])
    @body_class = 'posts'
    @title = @post.title
  end

end