class AddRatePerDayToRv < ActiveRecord::Migration[6.0]
  def change
    add_column :rvs, :rate_per_day, :float
  end
end
