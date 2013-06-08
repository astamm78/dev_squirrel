require 'spec_helper'

describe Link do

  it "should return its tag objects" do
    link = Link.create
    tag = Tag.create(   :tag    => "butter",
                        :tagable_id => link.id,
                        :tagable_type => link.class.to_s.capitalize)
    link.tags.should eq [tag]
  end

end
