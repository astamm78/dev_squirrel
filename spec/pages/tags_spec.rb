require 'spec_helper'

describe "Tags Pages" do

  it "should link to tags page from blog post" do
    post = Post.create(:title => "Tag Test", :body => "Tag Test Body")
    tag = Tag.create(:tag => "RSPEC", :tagable_id => post.id, :tagable_type => post.class.to_s)
    visit posts_path
    click_link 'RSPEC'
    page.should have_content('Tags page for:')
  end

  it "should display blog posts with its tag" do
    post = Post.create(:title => "Tag Test", :body => "Tag Test Body")
    tag = Tag.create(:tag => "RSPEC", :tagable_id => post.id, :tagable_type => post.class.to_s)
    visit tag_path(tag)
    page.should have_content('Tag Test')
  end

end