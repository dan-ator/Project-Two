class InfoItemsController < ApplicationController

before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]
load_and_authorize_resource 

  def index
  end

  def new
    @info_item = InfoItem.new
    @report = Report.find(params[:report_id])
  end


  def create
    @report = Report.find(params[:report_id])
    @info_item = @report.info_items.create(info_item_params)
    redirect_to report_path(@report)
  end

  def edit
    @report = Report.find(params[:report_id])
    @info_item = @report.info_items.find(params[:id])
  end

  def update
    @report = Report.find(params[:report_id])
    @info_item = InfoItem.find(params[:id]).update(info_item_params)
    redirect_to report_path(@report)
  end

  def destroy
    @report=Report.find(params[:report_id])
    @info_item = @report.info_items.find(params[:id])
    @info_item.destroy
    redirect_to report_path(@report)
  end

private
def info_item_params
  params.require(:info_item).permit(:category, :body, :report_id)
end

end
