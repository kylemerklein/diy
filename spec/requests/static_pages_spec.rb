require 'spec_helper'

describe "Static Pages" do
  describe "Home page" do
    
    it "should have the h1 'DIY'" do
      visit '/static_pages/home'
      page.should have_selector('h1', :text => 'DIY')
    end
    
    it "should have the right title" do
      visit '/static_pages/home'
      page.should have_selector('title',
                                  :text => "design my diy")
    end
    
    it "should not have a custom page title" do
      visit '/static_pages/home'
      page.should_not have_selector('title', :text => '| home')
    end
    
  end
  
   describe "Help page" do
    it "should have the h1 'Help'" do
      visit '/static_pages/help'
      page.should have_selector('h1', :text => 'Help')
    end
    
    it "should have the right title" do
      visit '/static_pages/help'
      page.should have_selector('title',
                                  :text => "design my diy | help")
    end
  end  
  
   describe "About page" do
   it "should have the h1 'About'" do
      visit '/static_pages/about'
      page.should have_selector('h1', :text => 'About')
    end
    
    it "should have the right title" do
      visit '/static_pages/about'
      page.should have_selector('title',
                                  :text => "design my diy | about")
    end
  end
  
end
