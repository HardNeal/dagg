class ProfileController < ApplicationController
  before_filter :authenticate_user!
  before_action :find_params_id, only: [:show, :update]

  def index
  	@users = current_user.trackers.all
  end

  def update
    if @tracker.active == true
    @tracker.update_attribute(:active, false)
      redirect_to profile_index_path
    else
      @tracker.update_attribute(:active, true)
      redirect_to profile_index_path
      end

  end

  private

  def find_params_id
    @tracker = Tracker.find(params[:id])
  end
end
