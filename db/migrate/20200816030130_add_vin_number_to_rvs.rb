class AddVinNumberToRvs < ActiveRecord::Migration[6.0]
  def change
    add_column :rvs, :vin_number, :string
  end
end
