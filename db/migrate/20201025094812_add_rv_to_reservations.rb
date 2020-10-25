class AddRvToReservations < ActiveRecord::Migration[6.0]
  def change
    add_reference :reservations, :rv, null: false, index:true, foreign_key: true
  end
end
