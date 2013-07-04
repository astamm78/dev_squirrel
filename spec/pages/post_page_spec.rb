require 'spec_helper'

describe "Single Post Page" do

  let(:post) { Post.create(:title => "Title", :body => "Body") }
  let(:tag) { post.tags.create(:tag => "tag")}

  after(:each) do
    Post.delete_all
    Tag.delete_all
  end

  it "should display the title" do
    visit post_path(post)
    page.should have_content("Title")
  end

  it "should display the created date" do
    visit post_path(post)
    page.should have_css('p.post_time')
  end

  it "should display tags" do
    tag = post.tags.create(:tag => "testing for tag content")
    visit post_path(post)
    page.should have_content(tag.tag)
  end

  it "should display tags as links" do
    tag = post.tags.create(:tag => "testing for tag content")
    visit post_path(post)
    page.should have_link(tag.tag)
  end

  it "should have the correct body class" do
    visit post_path(post)
    page.should have_css('body.posts')
  end

end