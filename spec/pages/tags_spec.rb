require 'spec_helper'

describe "Tags Pages" do

  after(:each) do
    Post.delete_all
    Tag.delete_all
  end

  it "should link to tags page from blog post" do
    post = Post.create(:title => "Tag Test", :body => "Tag Test Body")
    post.tags.create(:tag => "RSPEC")
    visit posts_path
    click_link 'RSPEC'
    page.should have_content('Blog posts with tag:')
  end

  it "should display blog posts with its tag" do
    post = Post.create(:title => "Tag Test", :body => "Tag Test Body")
    tag = Tag.create(:tag => "RSPEC")
    post.tags << tag
    visit tag_path(tag)
    page.should have_content('Tag Test')
  end

  it "should have a link to single post page" do
    post = Post.create(:title => "Tag Test", :body => "Tag Test Body")
    tag = Tag.create(:tag => "RSPEC")
    post.tags << tag
    visit tag_path(tag)
    page.should have_link('Tag Test')
  end

end