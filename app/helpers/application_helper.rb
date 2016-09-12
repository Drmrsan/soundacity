module ApplicationHelper
	def favourite?
		if current_user.voted_for? @song
			render @song
		end
	end
end
