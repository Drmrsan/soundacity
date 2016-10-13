module ApplicationHelper
	def favourite?
		if current_user.voted_for? @song
			render @song
		end
	end

	def bootstrap_flash_class(flash_type)
    { success: 'alert-success',
      error:   'alert-danger',
      alert:   'alert-warning',
      notice:  'alert-info'
    }[flash_type.to_sym] || flash_type.to_s
  end
  
end
