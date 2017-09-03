module SessionsHelper
    def log_in(company_profile)
        company_profile[:company_profile_id] = company_profile.id
    end
    
    def current_user
        @current_user ||= CompanyProfile.find_by(id: session[:company_profile_id])
    end
    
    def logged_in?
        !current_user.nil?
    end
end
