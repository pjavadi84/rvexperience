class RemoveImageFromRvs < ActiveRecord::Migration[6.0]
  def change
    remove_column :rvs, :image, :binary
  end
end
