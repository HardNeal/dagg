class TrackersController < ApplicationController
  def index
  end

  def show
  	@tracker = Tracker.find(params[:id])
  	@points = @tracker.points

  	@hash = Gmaps4rails.build_markers(@points) do |tracker, marker|
  	  marker.lat tracker.latitude
  	  marker.lng tracker.longtitude
      marker.infowindow tracker.message
  	end
    p @hash
  end

  private

  def tracker_params
    params.require(:tracker).permit(:longtitude, :latitude, :tracker_id)
  end
end
