class TagsController < ApplicationController

  def show
    @tag = Tag.find(params[:id])
    @posts = @tag.posts.order('created_at DESC')
    @body_class = "tags"
    @title = @tag.tag
  end

end