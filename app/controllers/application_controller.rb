class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  # def after_sign_in_path_for(resource)
  #   groups_path
  # end

  def authenticate_has_profile
		if !current_user.profile.present?
			@profile = Profile.new(user: current_user)
			if @profile.save
				redirect_to edit_profile_path(@profile),
				notice: 'Please fill out a profile before continuing'   
			end
		end
	end
end
