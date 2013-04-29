module ApplicationHelper
	def full_title(page_title)
		base_title = "Online Exam - the place you want to kill yourself."
		if page_title.empty?
			base_title
		else 
			"#{base_title} | #{page_title}"
		end
	end
end
