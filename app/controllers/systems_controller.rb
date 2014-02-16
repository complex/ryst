class SystemsController < ApplicationController

  def show
    @scans = Scan.order('created_at DESC').where system: params[:id]
  end

  def current
    if current_system
      redirect_to system_path(current_system)
    else
      redirect_to scans_path, alert: "No system found. This feature only works in game."
    end
  end

end
