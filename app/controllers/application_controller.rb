class ApplicationController < ActionController::Base
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern

  before_action -> { sleep 0.1 }

  private

  def authenticate
    return true if (@current_user = User.find_by_id(cookies.signed[:user_id]))

    redirect_to new_session_path
  end
end
