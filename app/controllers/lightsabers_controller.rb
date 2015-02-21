class LightsabersController < ApplicationController
  def index
    @lightsabers = Lightsaber.all
  end

  def new
    @lightsaber = Lightsaber.new
  end

  def create
    @lightsaber = Lightsaber.new(lightsaber_params)
    if @lightsaber.save
      flash[:notice] = "Lightsaber was successfully created"
    else
      render :new
    end
  end

  def show
    @lightsaber = Lightsaber.find(params[:id])
  end

  def edit
    @lightsaver = Lightsaber.find(params[:id])
  end

  def update
    @lightsaber = Lightsaber.find(params[:id])
      if @lightsaber.update(lightsaber_params)
        flash[:notice] = 'Lightsaber was successfully updated'
        redirect_to lightsabers_path(lightsaber)
      end
    end

    def destroy
      @lightsaber = Lightsaber.find(params[:id])
      if @lightsaber.destroy
        flash[:notice] = "Lightsaber was destroyed"
        redirect_to lightsabers_path
      end
    end

  private
  def lightsaber_params
    params.require(:lightsaber).permit(:owner, :color)
  end
end
