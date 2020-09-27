class RemoveOpeartingDaysFromCompanies < ActiveRecord::Migration[6.0]
  def change
    remove_column :companies, :opearting_days, :string
  end
end
