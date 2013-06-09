require 'spec_helper'

describe "Blog Page" do

  before(:each) do
    10.times do
      post = Post.create( :title => Faker::Lorem.sentence,
                          :body => Faker::Lorem.sentence)
      2.times do
        post.tags.create(   :tag  => Faker::Lorem.word)
      end
    end
    test = Post.create( :title => "Test Post", :body => "Post Body")
  end

  after(:each) do
    Post.delete_all
    Tag.delete_all
  end

  it "should display recent blog posts" do
    visit posts_path
    page.should have_css('h3.post_title')
  end

  it "should display when each blog was posted" do
    visit posts_path
    page.should have_content("Posted on:")
  end

  it "should display tags for each blog" do
    visit posts_path
    page.should have_css('ul.tags')
  end

  it "should display tags as links" do
    visit posts_path
    page.should have_css('a.tag_link')
  end

  it "should have links to more blog posts" do
    visit posts_path
    page.should have_css('div.pagination')
  end

end