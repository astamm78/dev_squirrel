require 'spec_helper'

describe "On Tags Pages" do

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

  it "should have the correct body class" do
    post = Post.create(:title => "Tag Test", :body => "Tag Test Body")
    tag = Tag.create(:tag => "RSPEC")
    post.tags << tag
    visit tag_path(tag)
    page.should have_css('body.tags')
  end

  it "should have the proper title on the Tag page" do
    post = Post.create(:title => "Tag Test", :body => "Tag Test Body")
    tag = Tag.create(:tag => "RSPEC")
    post.tags << tag
    visit tag_path(tag)
    expect(page).to have_title "DevSquirrel | RSPEC"
  end

end