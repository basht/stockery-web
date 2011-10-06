require 'spec_helper'

describe Portfolio do
  before(:each) do
  end

  it "create an instance given valid attributes" do
    lambda { port = Factory :portfolio }.should_not raise_error(MongoMapper::DocumentNotValid)

    # port.should be_valid
  end

  it "requires a non-empty key 'name'" do
    lambda { port = Factory :portfolio, :name => '' }.should raise_error(MongoMapper::DocumentNotValid)

    # port.should_not be_valid
  end

  it "requires a non-empty key 'email'" do
    lambda { port = Factory :portfolio, :email => '' }.should raise_error(MongoMapper::DocumentNotValid)

    # port.should_not be_valid
  end

  it "requires a unique name" do
    port_first = Factory :portfolio

    lambda { port = Factory :portfolio, :email => 'somethingvalid@vali.com', :name => port_first.name }.should raise_error(MongoMapper::DocumentNotValid)
    # port.should_not be_valid
  end

  it "requires the same name when updating" do
    port = Factory :portfolio

    # port.name = 'new_name'
    port.update_attributes(:name => 'new_name')
    port.should_not be_valid

    # lambda { port.update_attributes(:name => 'new_name') }.should raise_error(MongoMapper::DocumentNotValid)

    # port.should_not be_valid
  end 

  it "require a valid e-mail address" do
    addresses = %w[pieter@noort pieter pieter$$noort]
    addresses.each do |email|
      lambda { port = Factory :portfolio, :email => email }.should raise_error(MongoMapper::DocumentNotValid)
      # port.should_not be_valid
    end
  end
end
