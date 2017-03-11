module GoalsHelper

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

end
