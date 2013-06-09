require 'spec_helper'

describe Photo do

  it "should require a title" do
    photo = Photo.create( :description  => "photo description",
                          :image        => "image code")
    photo.should_not be_valid
  end

  it "should require a description" do
    photo = Photo.create( :title        => "photo title",
                          :image        => "image code")
    photo.should_not be_valid
  end

  it "should require an image" do
    photo = Photo.create( :description  => "photo description",
                          :title        => "photo title")
    photo.should_not be_valid
  end

end
