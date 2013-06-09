require 'spec_helper'

describe "On Photo Page" do

  it "should have the correct body class" do
    visit photos_path
    page.should have_css('body.photo')
  end

  it "should have the proper title on the Photo page" do
    visit photos_path
    expect(page).to have_title "DevSquirrel | Photos"
  end

end