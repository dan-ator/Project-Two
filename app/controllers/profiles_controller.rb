class ProfilesController < ApplicationController
# everthing below should be indented!
before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]
load_and_authorize_resource

def index
  @profiles = Profile.all
end

def new
  # nice!
  if current_user.profile
    redirect_to profiles_path, alert: "You already have a profile!!"
  else
  @profile = Profile.new
  end
end

def create
  # you should do the same check that the user doesn't have a profile here
  # or at least use a validation on the profile model to prevent it.
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
