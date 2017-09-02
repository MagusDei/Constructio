class AddIndexToCompanyName < ActiveRecord::Migration[5.0]
  def change
    add_index :company_profiles, :name, unique: true
  end
end
