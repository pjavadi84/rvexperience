class AddRvIdToReservations < ActiveRecord::Migration[6.0]
  def change
    add_column :reservations, :rv_id, :integer
  end
end
