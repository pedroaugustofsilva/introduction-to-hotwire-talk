class SessionsController < ApplicationController
  # GET /users/new
  def new
    @user = User.new
  end

  # POST /users or /users.json
  def create
    @user = User.find_or_initialize_by(username: session_params[:username])

    if @user.save
      cookies.signed.permanent[:user_id] = @user.id
      redirect_to root_path
    else
      render :new, status: :unprocessable_content
    end
  end

  private

  def session_params
    params.require(:sessions).permit(:username)
  end
end
