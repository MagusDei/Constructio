class AddPasswordDigestToCompanyProfiles < ActiveRecord::Migration[5.0]
  def change
    add_column :company_profiles, :password_digest, :string
  end
end
