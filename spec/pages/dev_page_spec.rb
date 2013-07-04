require 'spec_helper'

describe "On Dev Page" do

  it "should have the correct body class" do
    visit dev_path
    page.should have_css('body.dev')
  end

end