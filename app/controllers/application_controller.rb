class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def authenticate_is_admin!
  	if current_user.admin?
		  return true
		else
			redirect_to custom_messages_path
		end
  end
end
