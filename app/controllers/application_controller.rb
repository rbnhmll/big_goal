class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  
  def authenticate_has_profile
		if !current_user.profile.present?
			@profile = Profile.new(user: current_user)
			if @profile.save
				redirect_to edit_profile_path(@profile),
				notice: 'Please fill out a profile before continuing' 
			else
				redirect_to new_profile_path
			end
		end
	end

	def authenticate_is_admin!
  	if current_user.admin?
		  return true
		else
			redirect_to custom_messages_path
		end
  end

end
