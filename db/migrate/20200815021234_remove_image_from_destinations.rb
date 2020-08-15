class RemoveImageFromDestinations < ActiveRecord::Migration[6.0]
  def change
    remove_column :destinations, :image, :binary
  end
end
