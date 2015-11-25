class InfoItemsController < ApplicationController

# these three lines should be indented in
before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]
load_and_authorize_resource :report
load_and_authorize_resource :info_item, through: :report

  def index
  end

  def new
    @info_item = InfoItem.new
    @report = Report.find(params[:report_id])
  end


  def create # extra whitespace above! be consistent!
    @report = Report.find(params[:report_id])
    @info_item = @report.info_items.create(info_item_params)
    redirect_to report_path(@report)
  end

  def edit
    @info_item = @report.info_items.find(params[:id])
  end

  def update
    @info_item = InfoItem.find(params[:id])
    @info_item.update(info_item_params)
    redirect_to report_path(@info_item.report)
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
