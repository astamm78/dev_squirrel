require 'spec_helper'

describe 'On About Page' do

  it "should have the correct body class" do
    visit about_path
    page.should have_css('body.about')
  end

  it "should have the proper title on the About page" do
    visit about_path
    expect(page).to have_title "DevSquirrel | About DevSquirrel"
  end

end