require 'spec_helper'

describe "login" do

  let(:admin) { Admin.create( :email => "hello@tofu.com",
                              :password => "hello",
                              :first_name => "Andrew",
                              :last_name => "Stamm") }

  it "should let a valid admin log in" do
    visit narwhal_path
    fill_in "email", with: admin.email
    fill_in "password", with: admin.password
    click_button "Sign In"
    page.should have_content("Andrew Stamm Admin Page")
  end

  it "should display errors for an invalid password" do
    visit narwhal_path
    fill_in "email", with: admin.email
    fill_in "password", with: "wrong_password"
    click_button "Sign In"
    page.should have_content "Please try again"
  end

  it "should display errors for an invalid email" do
    visit narwhal_path
    fill_in "email", with: "admin@email.com"
    fill_in "password", with: admin.password
    click_button "Sign In"
    page.should have_content "Please try again"
  end

  it "should log out an admin" do
    visit narwhal_path
    fill_in "email", with: admin.email
    fill_in "password", with: admin.password
    click_button "Sign In"
    click_link "Log Out"
    page.should_not have_content("You are logged in as " + admin.full_name)
  end

end