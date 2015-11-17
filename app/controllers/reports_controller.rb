class ReportsController < ApplicationController

before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]

  def index
    @reports = Report.all
  end

  def new
    @report = Report.new
  end

  def create
    @report = Report.create(report_params)
    redirect_to report_path(@report)
  end

  def show
    @report = Report.find(params[:id])
    @locations = @report.location
  end

  def destroy
    @report = Report.find(params[:id])
    @report.destroy
    redirect_to reports_path
  end

private
def report_params
  params.require(:report).permit(:user_id, :created_at, :location_id)
end

end
