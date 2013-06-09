require 'spec_helper'

describe "On Dev Page" do

  it "should have the correct body class" do
    visit dev_path
    page.should have_css('body.dev')
  end

  it "should have the proper title on the Dev page" do
    visit dev_path
    expect(page).to have_title "DevSquirrel | My Development Projects"
  end

end