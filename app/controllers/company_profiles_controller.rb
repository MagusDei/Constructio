class CompanyProfilesController < ApplicationController
    def index
        @company_profiles = CompanyProfile.all
    end
    
    def show
        @company_profile = CompanyProfile.find(params[:id])
    end
    
    def new
    end
    
    def create
        @company_profile = CompanyProfile.new(company_params)
        @company_profile.save
        redirect_to @company_profile 
    end
    
    private
        def company_params
            params.require(:company_profile).permit(:name, :description)
        end
end

