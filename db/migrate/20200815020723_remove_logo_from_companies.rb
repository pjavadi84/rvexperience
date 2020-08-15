class RemoveLogoFromCompanies < ActiveRecord::Migration[6.0]
  def change
    remove_column :companies, :logo, :binary
  end
end
