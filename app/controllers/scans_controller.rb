class ScansController < ApplicationController

  def index
    @scans = Scan.order 'created_at DESC'
  end

  def new
    @scan = Scan.new
  end

  def create

    @scan = Scan.new scan_params
    @scan.location = current_location

    if @scan.save
      redirect_to scans_path
    else
      flash.now[:alert] = "Scan not saved. #{ @scan.errors.full_messages.join '. ' }."
      render :new
    end

  end

  def destroy

    scan = Scan.find params[:id]

    if scan.destroy
      redirect_to scans_path
    else
      redirect_to scans_path, alert: "There was a problem deleting the scan."
    end

  end

  private

  def scan_params
    params.require(:scan).permit :location, :content
  end

end
