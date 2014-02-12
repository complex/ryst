class ScansController < ApplicationController

  def new
    @scan = Scan.new
  end

  def create

    @scan = Scan.new scan_params
    @scan.location = request.env['HTTP_EVE_SOLARSYSTEMNAME']

    if @scan.save
      redirect_to scans_path, notice: "Scan saved."
    else
      flash[:alert] = "Scan not saved."
      render :new
    end

  end

  def index
    @scans = Scan.all
  end

  private

  def scan_params
    params.require(:scan).permit :location, :content
  end

end
