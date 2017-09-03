class SessionsController < ApplicationController
  def new
  end
  
  def create
    profile = CompanyProfile.find_by(name: param[:session][:name])
    if profile && profile.authenticate(params[:session][:password])
        # Log the user in.
        log_in profile
        redirect_to profile
    else
        flash.now[:danger] = 'The name and password combination was incorrect.'
        render 'new'
    end
  end
  
  def destroy
  end
end
