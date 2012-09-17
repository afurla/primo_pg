require 'spec_helper'

describe "StaticPages" do
	describe "Home Page" do 
	it "Should have the right title" do 
		visit '/static_pages/home'
		page.should have_selector('title', text: "Primo_PG | Home")
		end 
			
	it "should have the content 'home' " do
		visit '/static_pages/home'
		page.should have_content('home')
		end

# Additional test if we won't have the "home' visualized in the homepage 

	end
end
