class ProfilesController < ApplicationController

before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]

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
end

def update
end

def destroy
end

private
def profile_params
  params.require(:profile).permit(:info, :facebook_url, :blog_url, :other_url)
end


end
