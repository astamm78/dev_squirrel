require 'spec_helper'

describe Link do

  it "should require a name" do
    link = Link.create( :url  => "www.devsquirrel.com")
    link.should_not be_valid
  end

  it "should require a url" do
    link = Link.create( :name => "Dev Squirrel")
    link.should_not be_valid
  end

  it "should require a valid url" do
    link = Link.create( :url  => "devsquirrel",
                        :name => "Dev Squirrel")
    link.should_not be_valid
  end

  it "should return its tag objects" do
    link = Link.create( :url  => "www.devsquirrel.com",
                        :name => "Dev Squirrel")
    tag = Tag.create(   :tag    => "butter",
                        :tagable_id => link.id,
                        :tagable_type => link.class.to_s.capitalize)
    link.tags.should eq [tag]
  end

end