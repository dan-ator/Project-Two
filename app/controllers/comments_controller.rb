# very nice and neat controllers, thumbs up!
class CommentsController < ApplicationController

  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]
  load_and_authorize_resource

  #new
  def new
    @info_item = InfoItem.find(params[:info_item_id])
    @comment = @info_item.comments.build
  end

  #create
  def create
    @info_item = InfoItem.find(params[:info_item_id])
    @comment = @info_item.comments.create!(comment_params.merge(user: current_user))
    redirect_to report_path(@info_item.report)
  end

  def edit
    @comment = Comment.find(params[:id])
  end

  def update
    @comment = Comment.find(params[:id])
    @comment.update!(comment_params)
    redirect_to report_path(@comment.info_item.report)
  end

  def destroy
    @comment = Comment.find(params[:id])
    report = @comment.info_item.report
    @comment.destroy
    redirect_to report_path(report)
  end

  private
  def comment_params
      params.require(:comment).permit(:title, :body, :info_item_id)
  end

end
