require 'spec_helper'

describe "On Photo Page" do

  it "should have the correct body class" do
    visit photos_path
    page.should have_css('body.photo')
  end

end