class ReportsController < ApplicationController

before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]

  def index
    @reports = Report.all
  end

  def new
    @report = Report.new
  end

  def create
    @report = current_user.reports.create!
    redirect_to report_path(@report)
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end


end
