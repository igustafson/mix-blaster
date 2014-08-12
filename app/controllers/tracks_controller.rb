class TracksController < ApplicationController
  def create
    @mixtape = Mixtape.find(params[:mixtape_id])
    @track = @mixtape.tracks.create! track_params
    redirect_to mixtape_path(@mixtape)
  end

  def update
    @mixtape = Mixtape.find(params[:mixtape_id])
    @track = Track.find(params[:id])
    if @track.update track_params
      redirect_to @mixtape
    else
      render 'edit'
    end
  end

  def move_up
    track = Track.find(params[:id])
    track.move_higher
    redirect_to mixtape_path(track.mixtape)
  end

  def move_down
    track = Track.find(params[:id])
    track.move_lower
    redirect_to mixtape_path(track.mixtape)
  end

  def destroy
    track = Track.find(params[:id])
    @mixtape = track.mixtape
    track.destroy
    redirect_to mixtape_path(@mixtape)
  end

  private

  def track_params
    params.require(:track).permit(:title, :artist, :duration, :minutes, :seconds)
  end
end
