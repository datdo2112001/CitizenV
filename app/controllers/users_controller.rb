class UsersController < ApplicationController
  def new
    @user = User.new 
  end

  def show
    @user = User.find(params[:id])
  end
  
end

# User.new(tk:"A1", username:"A1", status:true, usercode:"34", region:"Hai Duong", password:"02112001", password_confirmation:"02112001")
