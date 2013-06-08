require 'spec_helper'

describe Post do

  it "should require a title" do
    post = Post.create( :body   => "This is the post body")
    post.should_not be_valid
  end

  it "should require a body" do
    post = Post.create( :title  => "This is the post title")
    post.should_not be_valid
  end

  it "should return a created_at time" do
    post = Post.create( :body   => "This is the post body",
                        :title  => "This is the post title")
    post.created_at.should_not eq nil
  end

  it "should return an updated_at time" do
    post = Post.create( :body   => "This is the post body",
                        :title  => "This is the post title")
    post.update_attributes(:title => "This is the new title")
    post.updated_at.should_not eq post.created_at
  end

end