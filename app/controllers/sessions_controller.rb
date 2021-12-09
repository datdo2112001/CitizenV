class SessionsController < ApplicationController
  
  skip_before_action :require_login, only: [:new, :create]
 

  def new
  end

  def create
    user = User.find_by(username: params[:session][:username].downcase)
    if user && user.authenticate(params[:session][:password])
    # Log the user in and redirect to the user's show page.
      reset_session
      log_in user
      redirect_to user
    else
      flash[:danger] = 'Invalid username/password combination' 
    # Create an error message.
      render 'new'
    end
  end

  def destroy
    log_out
    flash[:success] = "You are logged out"
    redirect_to root_url
  end

end
