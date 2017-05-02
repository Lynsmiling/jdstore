class ApplicationController < ActionController::Base
  # Prevenr CRSF attacks by raising an exception.

  # For APIs, you may want to use :null_session insteed.

  protect_from_forgery with: :exception

  def admin_required
    if !current_user.admin?
      redirect_to "/", alert: "You are not admin."
    end
  end
end
