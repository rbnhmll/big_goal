module DefaultMessagesHelper

	def authenticate_is_admin!
  	if current_user.admin?
		  return true
		else
			redirect_to custom_messages_path
		end
  end
	
end
