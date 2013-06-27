require 'spec_helper'

describe "On Home Page" do

  it "should have the correct body class" do
    visit root_path
    page.should have_css('body.about')
  end

end