require 'spec_helper'

describe 'page titles' do

  it "should have the proper title on the About page" do
    visit about_path
    expect(page).to have_title "DevSquirrel | About DevSquirrel"
  end

  it "should have the proper title on the Blog page" do
    visit posts_path
    expect(page).to have_title "DevSquirrel | DevSquirrel Blog"
  end

  it "should have the proper title on the Dev page" do
    visit dev_path
    expect(page).to have_title "DevSquirrel | My Development Projects"
  end

  it "should have the proper title on the Haiku page" do
    visit haikus_path
    expect(page).to have_title "DevSquirrel | Haikus"
  end

  it "should have the proper title on the Photo page" do
    visit photos_path
    expect(page).to have_title "DevSquirrel | Photos"
  end

end