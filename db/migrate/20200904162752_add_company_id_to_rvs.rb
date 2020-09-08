class AddCompanyIdToRvs < ActiveRecord::Migration[6.0]
  def change
    add_column :rvs, :company_id, :integer
  end
end
