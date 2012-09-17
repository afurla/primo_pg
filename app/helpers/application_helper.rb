module ApplicationHelper

#Returns the full title on a per-page bases 
	def full_title(page_title)
		base_title = "Primo_PG"
		if page_title.empty?
				base_title
			else
				"#{base_title} | #{page_title}"
		end
	end
end
