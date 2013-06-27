require 'spec_helper'

describe Photo do

  it "should require an image" do
    photo = Photo.create( :title        => "photo title")
    photo.should_not be_valid
  end

end
