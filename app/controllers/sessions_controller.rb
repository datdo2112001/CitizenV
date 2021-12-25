class SessionsController < ApplicationController
  skip_before_action :require_login, only: [:new, :create]
  def new
  end

  def create
    user = User.find_by(accountname: params[:session][:accountname])
    if user && user.authenticate(params[:session][:password])
      # Log the user in and redirect to the user's show page.
      reset_session
      log_in user
      redirect_to user
    else
      flash[:danger] = 'Sai thông tin đăng nhập. Vui lòng nhập lại.'
      # Create an error message.
      render 'new'
    end
  end

  def destroy
    log_out
    redirect_to root_url
  end

end
