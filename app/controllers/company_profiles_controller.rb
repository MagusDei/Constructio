class CompanyProfilesController < ApplicationController
    def index
        @company_profiles = CompanyProfile.all
        @search_text = params[:search][:searchtext]
    end
    
    def show
        @company_profile = CompanyProfile.find(params[:id])
    end
    
    def new
    end
    
    def create
        @company_profile = CompanyProfile.new(company_params)
        if @company_profile.save
            redirect_to @company_profile 
        else
            render 'new'
        end
    end
    
    private
        def company_params
            params.require(:company_profile).permit(:name, :description, :password, :password_confirmation)
        end
end

