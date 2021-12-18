class CitizensController < ApplicationController
  def new
  end

  def index
    @citizens = Citizen.all
    @citizen = Citizen.new
  end

  def show
    @citizen = Citizen.find(params[:id])
  end

  def create
    @citizen = Citizen.new(citizen_params)

    respond_to do |format|
      if @citizen.save
        format.html { redirect_to @citizen, notice: 'Citizen was successfully created.' }
        format.js   {}
        format.json { render :show, status: :created, location: @citizen }
      else
        format.html { render :new }
        format.json { render json: @citizen.errors, status: :unprocessable_entity }
      end
    end
  end

  def citizen_params
    params.require(:citizen).permit(:cmnd, :name, :birthday, :sex, :hometown, :paddress,
                                    :traddress, :religion, :edulevel, :job, :code)

  end

  def overall
    @count = Citizen.count
  end

  def destroy
    Citizen.find(params[:id]).destroy
    flash[:success] = "Citizen deleted"
    respond_to do |format|
      format.html { redirect_to citizens_url, notice: 'Citizen was successfully deleted.' }
      format.json { head :no_content }
      format.js   { render layout: false }
    end
  end

  def detail
    @citizens = Citizen.all
    @current_code = params[:code]
  end 




end
