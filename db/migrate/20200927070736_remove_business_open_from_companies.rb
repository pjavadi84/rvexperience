class RemoveBusinessOpenFromCompanies < ActiveRecord::Migration[6.0]
  def change
    remove_column :companies, :business_open, :integer
  end
end
