class ScansController < ApplicationController

  def index
    @scans = Scan.order 'created_at DESC'
  end

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

  def destroy

    scan = Scan.find params[:id]

    if scan.destroy
      redirect_to scans_path, notice: "Scan deleted."
    else
      redirect_to scans_path, alert: "Scan not deleted."
    end

  end

  private

  def scan_params
    params.require(:scan).permit :location, :content
  end

end
