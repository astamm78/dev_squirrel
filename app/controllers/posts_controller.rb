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

  def create
    post = Post.create( :title  => params[:post][:title],
                        :body   => params[:post][:body])
    params[:post][:tags].split(", ").each do |tag|
      post.tags << Tag.find_or_create_by_tag(:tag => tag)
    end
    if post.save
      post.tweet
      redirect_to posts_path
    else
      flash[:errors] = "Please enter all fields"
      redirect_to admins_path
    end
  end

end