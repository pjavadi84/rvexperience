class AddUserToReservations < ActiveRecord::Migration[6.0]
  def change
    add_reference :reservations, :user, null: false, index: true, foreign_key: true
    # add_foreign_key :reservations, :users
  end
end
