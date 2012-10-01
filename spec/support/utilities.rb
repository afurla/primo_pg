include ApplicationHelper

def valid_signin(user)
	fill_in "Email",    with: user.email
	fill_in "Password", with: user.password
	click_button "Sign in"
end

RSpec::Matchers.define :have_error_message do |message|
	match do |page|
		page.should have_selector('div.alert.alert-error', text: message)
	end
end

#def full_title(page_title) # Alternative to app/helpers/application_helper.rb
#	base_title = "Primo_PG"
#	if page_title.empty?
#		base_title
#	else
#		"#{base_title} | #{page_title}"
#	end
#end

