class ReportsController < ApplicationController

before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]

  def index
    @reports = Report.all
  end

  def new
    @report = Report.new
  end

  def create
    @report = current_user.reports.create(report_params)
    # @report = Report.create(report_params.merge(user: current_user))
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
  params.require(:report).permit(:created_at, :location_id)
end

end
