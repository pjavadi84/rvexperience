class RemoveBusinessCloseFromCompanies < ActiveRecord::Migration[6.0]
  def change
    remove_column :companies, :business_close, :integer
  end
end
