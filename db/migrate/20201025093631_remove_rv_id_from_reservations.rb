class RemoveRvIdFromReservations < ActiveRecord::Migration[6.0]
  def change
    remove_column :reservations, :rv_id
  end
end
