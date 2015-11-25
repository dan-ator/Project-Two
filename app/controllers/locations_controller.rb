class LocationsController < ApplicationController
# should be indented!
before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]
load_and_authorize_resource

  def index
    @locations = Location.all
  end

  def show
    @location = Location.find(params[:id])
  end


end
