require 'spec_helper'

describe Tag do

  let(:photo) { Photo.new(:id => 1) }

  it "should require a tag" do
    tag = Tag.create()
    tag.should_not be_valid
  end

end