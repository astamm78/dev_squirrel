require 'spec_helper'

describe Tag do

  let(:photo) { Photo.new(:id => 1) }

  it "should require a tag" do
    tag = Tag.create( :tagable_id   => "1",
                      :tagable_type => "Post")
    tag.should_not be_valid
  end

  it "should require a tagable_id" do
    tag = Tag.create( :tag          => "butter",
                      :tagable_type => "Post")
    tag.should_not be_valid
  end

  it "should require a tagable_type" do
    tag = Tag.create( :tag          => "butter",
                      :tagable_id   => "1")
    tag.should_not be_valid
  end

end
