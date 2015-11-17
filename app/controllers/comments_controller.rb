class CommentsController < ApplicationController

  #index
  def index

  end

  #new
  def new
    @info_item = InfoItem.find(params[:info_item_id])
    @comment = @info_item.comments.build
  end

  #create
  def create
    @info_item = InfoItem.find(params[:info_item_id])
    @comment = @info_item.comments.create!(comment_params)
    redirect_to report_path(@info_item.report)
  end

  def edit
    @info_item = InfoItem.find(params[:info_item_id])
    @comment = @info_item.comments.find(params[:id])
  end

  def update
    @info_item = InfoItem.find(params[:info_item_id])
    @comment = @info_item.comments.find(params[:id]).update(comment_params)
    redirect_to report_path(@info_item.report)
  end

  def destroy
    @info_item = InfoItem.find(params[:info_item_id])
    @comment = @info_item.comments.find(params[:id])
    @comment.destroy
    redirect_to report_path(@info_item.report)
  end

  private
  def comment_params
      params.require(:comment).permit(:title, :body, :info_item_id, :user_id)
  end

end
