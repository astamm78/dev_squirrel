require 'spec_helper'

describe "Blog Page" do

  let(:post) { Post.create( :title  => "Post Title",
                            :body   => "Post Body") }

  let(:tag) { Tag.create(   :tag          => "tag",
                            :tagable_type => post.class,
                            :tagable_id   => post.id) }

  it "should display recent blog posts" do
    visit posts_path
    page.should have_content("Post Title")
  end

  it "should display when each blog was posted" do
    visit posts_path
    page.should have_content(post.created_at)
  end

  it "should display tags for each blog" do
    visit posts_path
    page.should have_content("tag")
  end

  it "should display tags as links" do
    visit posts_path
    page.should have_link("tag")
  end

  it "should have links to more blog posts" do
    10.times do Post.create(  :title => Faker::Lorem.sentence,
                              :body => Faker::Lorem.sentence)
    end
    visit posts_path
    page.should have_link("Next")
  end

end