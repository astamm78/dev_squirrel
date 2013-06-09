require 'spec_helper'

describe "On Admin Page" do

  it "should have the correct body class" do
    visit narwhal_path
    page.should have_css('body.admin')
  end

  it "should have the proper title on the Admin page" do
    visit narwhal_path
    expect(page).to have_title "DevSquirrel | Admin"
  end

end