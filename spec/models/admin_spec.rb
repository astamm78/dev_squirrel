require 'spec_helper'

describe Admin do

  it "should require an email" do
    admin =  Admin.create(  :first_name => "Andrew",
                            :last_name  => "Stamm",
                            :password   => "password")
    admin.should_not be_valid
  end

  it "should require a password" do
    admin = Admin.create(  :first_name => "Andrew",
                            :last_name  => "Stamm",
                            :email      => "email@test.com")
    admin.should_not be_valid
  end

  it "should require a valid email" do
    admin = Admin.create(  :first_name => "Andrew",
                            :last_name  => "Stamm",
                            :email      => "email",
                            :password   => "password")
    admin.should_not be_valid
  end

  it "should return an ecrypted password" do
    admin = Admin.create(   :first_name => "Andrew",
                            :last_name  => "Stamm",
                            :email      => "email@email.com",
                            :password   => "password")
    admin.password_digest.length.should_not eq "password".length
  end

  it "should have a first_name" do
    admin = Admin.create(   :last_name  => "Stamm",
                            :email      => "email@email.com",
                            :password   => "password")
    admin.should_not be_valid
  end

  it "should have a last_name" do
    admin = Admin.create(   :first_name => "Andrew",
                            :email      => "email@email.com",
                            :password   => "password")
    admin.should_not be_valid
  end

  it "full_name should return a concat name" do
    admin = Admin.create(   :first_name => "Andrew",
                            :last_name  => "Stamm",
                            :email      => "email@email.com",
                            :password   => "password")
    admin.full_name.should eq "Andrew Stamm"
  end

  it "should be valid with all attributes assigned" do
    admin = Admin.create(   :first_name => "Andrew",
                            :last_name  => "Stamm",
                            :email      => "email@email.com",
                            :password   => "password")
    admin.should be_valid
  end

end