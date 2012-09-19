def full_title(page_title) # Alternative to app/helpers/application_helper.rb
	base_title = "Primo_PG"
	if page_title.empty?
		base_title
	else
		"#{base_title} | #{page_title}"
	end
end

