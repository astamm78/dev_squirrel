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
    if post.save
      params[:post][:tags].split(" ").each do |tag|
        post.tags.create(:tag => tag)
      end
      redirect_to posts_path
    else
      flash[:errors] = "Please enter all fields"
      redirect_to admins_path
    end
  end

end