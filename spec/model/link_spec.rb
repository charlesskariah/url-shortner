require 'rails_helper'

ENV['BASE_URL'] = "https://ide.c9.io/charles37/url-shortner/"

describe Link do
  it "has a valid factory" do
    FactoryGirl.create(:link).should be_valid
  end
  
  it "is invalid without a outgoing_url" do
    FactoryGirl.build(:link, outgoing_url: nil).should_not be_valid
  end
  
  it "returns a contact's full name as a string" do
    link = FactoryGirl.create(:link)
    incoming_url = link.incoming_url
    link.display_url.should == "https://ide.c9.io/charles37/url-shortner/#{incoming_url}"
  end
  
  
end