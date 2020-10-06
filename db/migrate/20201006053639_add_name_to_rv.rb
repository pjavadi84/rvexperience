class AddNameToRv < ActiveRecord::Migration[6.0]
  def change
    add_column :rvs, :name, :string
  end
end
