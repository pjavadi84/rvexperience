class AddPlaceNumberToRvs < ActiveRecord::Migration[6.0]
  def change
    add_column :rvs, :plate_number, :string
  end
end
