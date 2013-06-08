require 'spec_helper'

describe Photo do

  it "should return its tag objects" do
    photo = Photo.create
    tag = Tag.create(   :tag    => "butter",
                        :tagable_id => photo.id,
                        :tagable_type => photo.class.to_s.capitalize)
    photo.tags.should eq [tag]
  end

end
