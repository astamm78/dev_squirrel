require 'spec_helper'

describe Haiku do

  it "should require a line one" do
    haiku = Haiku.create( :line_2   => "line two",
                          :line_3 => "line three")
    haiku.should_not be_valid
  end

  it "should require a line two" do
    haiku = Haiku.create( :line_1   => "line one",
                          :line_3 => "line three")
    haiku.should_not be_valid
  end

  it "should require a line three" do
    haiku = Haiku.create( :line_1   => "line one",
                          :line_2   => "line two")
    haiku.should_not be_valid
  end

  it "should return a created_at time" do
    haiku = Haiku.create( :line_1   => "line one",
                          :line_2   => "line two",
                          :line_3 => "line three")
    haiku.created_at.should_not eq nil
  end

  it "should return an updated_at time" do
    haiku = Haiku.create( :line_1   => "line one",
                          :line_2   => "line two",
                          :line_3 => "line three")
    haiku.update_attributes(:line_1 => "new line one")
    haiku.updated_at.should_not eq haiku.created_at
  end

  it "should return its tag objects" do
    haiku = Haiku.create( :line_1   => "line one",
                          :line_2   => "line two",
                          :line_3 => "line three")
    tag = Tag.create(   :tag    => "butter",
                        :tagable_id => haiku.id,
                        :tagable_type => haiku.class.to_s.capitalize)
    haiku.tags.should eq [tag]
  end

end
