class RemovePhoneNumberFromCompanies < ActiveRecord::Migration[6.0]
  def change
    remove_column :companies, :phone_number, :integer
  end
end
