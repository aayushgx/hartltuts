require 'spec_helper'

describe "StaticPages" do
  
  let(:base_title) {"Ruby on Rails tuts"}
  
  
=begin  
  describe "GET /static_pages" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get static_pages_index_path
      response.status.should be(200)
    end
  end
=end
  
  
  describe "Home page" do

    it "should have the content 'Sample App'" do
      visit '/static_pages/home'
      expect(page).to have_content('Sample App')
    end
    
    it "should have the right title" do
      visit '/static_pages/home'
      expect(page).to have_title("Ruby on Rails")
    end

    it "should not have a custom page title" do
      visit '/static_pages/home'
      expect(page).not_to have_title('| Home')
    end

  end
  
  describe "Help Page" do
    
    it "should have the content 'Help' " do
      visit '/static_pages/help'
      expect(page).to have_content('Help')
    end
    
    it "should have the right title" do
      visit '/static_pages/help'
      expect(page).to have_title("Help")
    end
  end
  
  describe "About Page" do
    
    it "should have the content 'About us' " do
      visit '/static_pages/about'
      expect(page).to have_content('About us')
    end    
    
    it "should have the right title" do
      visit '/static_pages/about'
      expect(page).to have_title("About us")
    end
  end
  
  describe "Contact Us" do
    it "should have the content 'Contact us' " do
      visit '/static_pages/contact'
      expect(page).to have_content("Contact us")
    end
    
    it "should have the right title" do
      visit '/static_pages/contact'
      expect(page).to have_title("Contact us")
    end
  end
end
