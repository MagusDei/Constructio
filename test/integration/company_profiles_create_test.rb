require 'test_helper'

class CompanyProfilesCreateTest < ActionDispatch::IntegrationTest
    test "Invalid profile not added to database" do
        assert_no_difference 'CompanyProfile.count' do
            post company_profiles_path, params: {company_profile: {name: "", description: "  ", password: "n", password_confirmation: "pass"} }
        end
    end
end
