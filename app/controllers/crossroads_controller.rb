class CrossroadsController < ApplicationController

	def papers
		if user_signed_in?
		raise
      redirect_to "goals/current_goal"
    elsif admin_signed_in?
      redirect_to default_messages_path
    else
    	redirect_to new_user_session_path
    end
	end

end
