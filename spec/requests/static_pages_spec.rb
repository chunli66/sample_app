require 'spec_helper'

describe "Static pages" do
  describe "Home page" do
    it "should have the content 'Sample app'" do
    	visit '/static_pages/home'
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      page.should have_content('Sample App')
    end
  end

describe "Help page" do

	it "should have the content 'Help' " do
		visit '/static_pages/help'
		page.should have_content('Help')
	end
end
end
