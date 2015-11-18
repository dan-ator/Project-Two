class ProfilesController < ApplicationController

before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]
load_and_authorize_resource

def index
  @profiles = Profile.all
end

def new
  @profile = Profile.new
end

def create
  @profile = Profile.all
  @profile.create!(profile_params.merge(user: current_user))
  redirect_to profiles_path
end

def show
  @profile = Profile.find(params[:id])
end

def edit
  @profile = Profile.find(params[:id])
end

def update
  @profile = Profile.find(params[:id])
  @profile.update!(profile_params)
  redirect_to profile_path(@profile)
end

def destroy
  @profile = Profile.find(params[:id])
  @profile.destroy
  redirect_to profiles_path
end

private
def profile_params
  params.require(:profile).permit(:info, :facebook_url, :blog_url, :other_url)
end


end
