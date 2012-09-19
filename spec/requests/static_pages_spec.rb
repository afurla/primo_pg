require 'spec_helper'

describe "StaticPages" do
	
	subject {page}
	describe "Home Page" do 
	before {visit root_path} 

		it {should have_selector('title', text: full_title('')) }
		it {should have_selector('h1', text: "Home")}
		end

	describe "Foto Page" do 
	before {visit foto_path}

		it {should have_selector('title', text: full_title("Foto")) }
	  it {should have_selector('h1', text: "Foto") }
			end 
	
	describe 'Blog Page' do 
	before {visit blog_path}
		
		it {should have_selector('title', text: full_title("Blog")) }
	  it {should have_selector('h1', text: "Blog") }
			end 
end
