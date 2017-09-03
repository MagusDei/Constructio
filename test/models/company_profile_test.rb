require 'test_helper'

class CompanyProfileTest < ActiveSupport::TestCase
  
  def setup
    @company_profile = CompanyProfile.new(name: "ExAMPLE", description: "Just another example.", password: "barfoo", password_confirmation: "barfoo")
  end
  
  test "default_test" do
    assert @company_profile.valid?
  end
  
  test "Name not empty" do
    @company_profile.name = "     "
    assert_not @company_profile.valid?
  end
  
  test "Desc not empty" do
    @company_profile.description = "     "
    assert_not @company_profile.valid?
  end
  
  test "Name has a maximum size" do
    @company_profile.name = "a"*200
    assert_not @company_profile.valid?
  end
  
  test "Name has a minimum length" do
    @company_profile.name = "a"
    assert_not @company_profile.valid?
  end
  
  test "Names should be unique" do
    duplicate_company = @company_profile.dup
    @company_profile.save
    assert_not duplicate_company.valid?
  end
  
  test "Password not blank" do
    @company_profile.password = @company_profile.password_confirmation = " " * 12
    assert_not @company_profile.valid?
  end
  
  test "Password should be at least 6 letters" do
    @company_profile.password = @company_profile.password_confirmation = "12345"
    assert_not @company_profile.valid?
  end
  
  # test "the truth" do
  #   assert true
  # end
end
