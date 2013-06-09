require 'spec_helper'

describe 'nav links' do

  context "navbar on homepage" do

    it "should link to the about page" do
      visit root_path
      click_link "about"
      page.should have_content("About DevSquirrel")
    end

    it "should link to the blog page" do
      visit root_path
      click_link "blog"
      page.should have_content("DevSquirrel Blog")
    end

    it "should link to the dev page" do
      visit root_path
      click_link "dev"
      page.should have_content("My Developer Projects")
    end

    it "should link to the haiku page" do
      visit root_path
      click_link "haiku"
      page.should have_content("Haikus")
    end

    it "should link to the photo page" do
      visit root_path
      click_link "photo"
      page.should have_content("My Photography")
    end

  end

end