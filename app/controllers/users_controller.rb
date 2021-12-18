class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def show
    @user = User.find(params[:id])
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = "Create success!"
      redirect_to @user
    else
      render 'new'
    end
  end

  def user_params
    params.require(:user).permit(:accountname, :password,
                                    :password_confirmation, :tk, :region, :permission)
  end

  def index
    @users = User.all
  end

  def destroy
    User.find(params[:id]).destroy
    flash[:success] = "User deleted"
    respond_to do |format|
      format.html { redirect_to users_url, notice: 'User was successfully deleted.' }
      format.json { head :no_content }
      format.js   { render layout: false }
    end
  end

  def permission
    @user = User.find(params[:id])
    @users = User.all
    if (@user.permission == "true") 
      @users.each do |user|
        code1 = @user.accountname.to_s
        code2 = user.accountname.to_s
        if (code2.index(code1) == 0)
          user.update_attribute(:permission, "false")
        end
      end

      flash[:success] = "Khóa quyền khai báo thành công"
    else 

      @users.each do |user|
        code1 = @user.accountname.to_s
        code2 = user.accountname.to_s
        if (code2.index(code1) == 0)
          user.update_attribute(:permission, "true")
        end
      end

      flash[:success] = "Cấp quyền khai báo thành công"
    end

    redirect_to :controller => 'users', :action => 'index'

  end



end
