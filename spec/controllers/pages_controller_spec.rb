require 'spec_helper'

describe PagesController do

  describe "GET 'Home'" do
    it "should be successful" do
      get 'Home'
      response.should be_success
    end
  end

  describe "GET 'Help'" do
    it "should be successful" do
      get 'Help'
      response.should be_success
    end
  end

end
