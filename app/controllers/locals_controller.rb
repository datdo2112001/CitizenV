class LocalsController < ApplicationController
  def new
  end

  def index
    @locals = Local.all
    @local = Local.new
  end

  def show
    @local = Local.find(params[:id])
  end

  def create
    @local = Local.new(local_params)

    respond_to do |format|
      if @local.save
        format.html { redirect_to @local, notice: 'Local was successfully created.' }
        format.js   {}
        format.json { render :show, status: :created, location: @local }
      else
        format.html { render :new }
        format.json { render json: @local.errors, status: :unprocessable_entity }
      end
    end
  end

  def local_params
    params.require(:local).permit(:name, :code, :status)

  end

  def destroy
    Local.find(params[:id]).destroy
    flash[:success] = "Local deleted"
    respond_to do |format|
      format.html { redirect_to locals_url, notice: 'Local was successfully deleted.' }
      format.json { head :no_content }
      format.js   { render layout: false }
    end
  end

end
