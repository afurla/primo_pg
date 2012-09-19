require 'spec_helper'

describe "StaticPages" do
	
	subject {page}

	shared_examples_for "all static pages" do 
		it { should have_selector('title', text: full_title(page_title)) }
		end
			
	describe "Home Page" do 
	before {visit root_path} 
		
		let(:heading) {'Primo_PG'}
		let(:page_title) {''}
		
		it_should_behave_like "all static pages"
		end

	describe "Foto Page" do 
	before {visit foto_path}

		let(:heading) {'Foto'}
		let(:page_title) {'Foto'}
		it_should_behave_like "all static pages"
			end 
	
	describe 'Blog Page' do 
	before {visit blog_path}
		
		let(:heading) {'Blog'}
		let(:page_title) {'Blog'}
		it_should_behave_like "all static pages"
			end 

	it "Should have the correct link to the page in the layout" do 
		visit root_path
		click_link "Foto"
		page.should have_selector 'title', text: full_title('Foto')
		click_link "Blog"
		page.should have_selector 'title', text: full_title("Blog")
		click_link "Home"
		click_link "Iscriviti adesso"
		page.should have_selector 'title', text: full_title('Sign up')
	end
end
