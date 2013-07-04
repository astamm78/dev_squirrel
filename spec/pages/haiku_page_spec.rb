require 'spec_helper'

describe "On Haiku Page" do

  before(:each) do
    Haiku.delete_all
    @haiku = Haiku.create(  :line_1 => "haiku line one",
                            :line_2 => "haiku line two",
                            :line_3 => "haiku line three")
  end

  it "should have the correct body class" do
    visit haikus_path
    page.should have_css('body.haiku')
  end

  it "should display line one of the haiku" do
    visit haikus_path
    page.should have_content(@haiku.line_1)
  end

  it "should display line two of the haiku" do
    visit haikus_path
    page.should have_content(@haiku.line_2)
  end

  it "should display line three of the haiku" do
    visit haikus_path
    page.should have_content(@haiku.line_3)
  end

  it "should style line one" do
    visit haikus_path
    page.should have_css('p.line_one')
  end

  it "should style line two" do
    visit haikus_path
    page.should have_css('p.line_two')
  end

  it "should style line three" do
    visit haikus_path
    page.should have_css('p.line_three')
  end

end