class ApiForTrackersController < ApplicationController
  before_action :set_tracker

  def validate_tracker
    respond_to do |format|
      if @tracker.nil?
        render status: :not_found  
      else
        format.json { render action: 'accept_message', status: 200 }
      end
    end
  end

  def aaaa
    render json: { message: 'Hello there' }, status: :ok
  end

  def accept_message
    render json: { message: "#{@tracker.protocol.id}" }, status: :ok
  end

  private

  def set_tracker
    @tracker = nil
    begin
      @tracker = Tracker.find_by(imei_code: params.require(:imei_code))
    rescue => exception
      puts exception
    end
  end
end
