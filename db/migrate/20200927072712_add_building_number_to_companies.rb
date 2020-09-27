class AddBuildingNumberToCompanies < ActiveRecord::Migration[6.0]
  def change
    add_column :companies, :building_number, :integer
  end
end
