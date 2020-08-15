class RemovePictureFromCompanies < ActiveRecord::Migration[6.0]
  def change
    remove_column :companies, :picture, :binary
  end
end
