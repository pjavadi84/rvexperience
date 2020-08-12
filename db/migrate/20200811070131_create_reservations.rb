class CreateReservations < ActiveRecord::Migration[6.0]
  def change
    create_table :reservations do |t|
      t.date :start_date
      t.date :end_date
      t.string :pickup_location
      t.string :dropoff_location
      t.integer :guest_quantity
      t.integer :rental_duration
      t.float :price_per_night
      t.float :subtotal
      t.float :total
      t.float :tax
      t.string :coupon_code
      t.float :discount_price
      t.text :additional_notes

      t.timestamps
    end
  end
end
