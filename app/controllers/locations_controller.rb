class LocationsController < ApplicationController

before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]

  def index
    @locations = Location.all
  end

  def show
    @location = Location.find(params[:id])
  end


end
