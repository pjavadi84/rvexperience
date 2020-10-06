class AddCapacityToRv < ActiveRecord::Migration[6.0]
  def change
    add_column :rvs, :capacity, :integer
  end
end
