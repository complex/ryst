class LocationsController < ApplicationController

  def show
    @scans = Scan.order('created_at DESC').where location: params[:id]
  end

  def current
    if current_location
      redirect_to location_path(current_location)
    else
      redirect_to scans_path
    end
  end

end
