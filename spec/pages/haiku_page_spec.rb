require 'spec_helper'

describe "On Haiku Page" do

  it "should have the correct body class" do
    visit haikus_path
    page.should have_css('body.haiku')
  end

  it "should have the proper title on the Haiku page" do
    visit haikus_path
    expect(page).to have_title "DevSquirrel | Haiku"
  end

end