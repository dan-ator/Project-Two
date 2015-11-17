class ProfileController <ApplicationController

def index
  @profiles = Profile.all
end

def new
end

def create
end

def show
  @profile = profile.find(params[:id])
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
