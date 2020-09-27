class AddPhonenumberToCompanies < ActiveRecord::Migration[6.0]
  def change
    add_column :companies, :phonenumber, :string
  end
end
