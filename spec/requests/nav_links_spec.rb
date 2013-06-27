require 'spec_helper'

describe "Navigation Links" do

  it "should appear on home page" do
    visit root_path
    page.should have_css('ul#home_nav')
  end

  it "should appear on blog page" do
    visit posts_path
    page.should have_css('ul#home_nav')
  end

  it "should appear on dev page" do
    visit dev_path
    page.should have_css('ul#home_nav')
  end

  it "should appear on haiku page" do
    visit haikus_path
    page.should have_css('ul#home_nav')
  end

  it "should appear on photo page" do
    visit photos_path
    page.should have_css('ul#home_nav')
  end

end