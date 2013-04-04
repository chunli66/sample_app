require 'spec_helper'

describe "Static pages" do
  
 # let(:base_title) {"Ruby on Rails Tutorial Sample App"}

  subject { page }

  describe "Home page" do
    before { visit root_path }   #visits root path before each example

    it { should have_selector('h1',         content: 'Sample App') }
    it { should have_selector('title',      content: full_title('')) }
    it { should_not have_selector 'title',  text: '| Home'}
  end
    
  
describe "Help page" do
    before { visit help_path } #visits help path before each example

	it { should have_selector('h1',           content: 'Help') }
  it { should have_selector('title',        content: full_title('Help')) }
	end

describe "About page" do
    before { visit about_path }  #visits about path before each example
  
  it { should have_selector('h1',           content: 'About') }
  it { should have_selector('title',        content: full_title('About Us')) }
end

describe "Contact page" do
    before { visit contact_path }  #visits contact path before each example

  it { should have_selector('h1',           content: 'Contact') }
  it { should have_selector('title',        content: full_title('Contact')) }

end

end
