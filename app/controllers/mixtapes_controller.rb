class MixtapesController < ApplicationController
  def index
    @mixtapes = Mixtape.all
  end

  def show
    @mixtapes = Mixtape.all
    @mixtape = Mixtape.find(params[:id])
    @track = Track.new
  end

  def new
    @mixtapes = Mixtape.all
    @mixtape = Mixtape.new
  end

  def edit
    @mixtapes = Mixtape.all
    @mixtape = Mixtape.find(params[:id])
  end

  def create
    @mixtape = Mixtape.new(mixtape_params)
   
    if @mixtape.save
      redirect_to @mixtape
    else
      render 'new'
    end
  end

  def update
    @mixtape = Mixtape.find(params[:id])
   
    if @mixtape.update(mixtape_params)
      redirect_to @mixtape
    else
      render 'edit'
    end
  end

  def destroy
    @mixtape = Mixtape.find(params[:id])
    @mixtape.destroy
    redirect_to mixtapes_path
  end

  private

  def mixtape_params
    params.require(:mixtape).permit(:title, :description)
  end
end
