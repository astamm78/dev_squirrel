require 'spec_helper'

describe "On Admin Page" do

  it "should have the correct body class" do
    visit narwhal_path
    page.should have_css('body.admin')
  end

end