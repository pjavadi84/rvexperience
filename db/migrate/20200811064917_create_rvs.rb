class CreateRvs < ActiveRecord::Migration[6.0]
  def change
    create_table :rvs do |t|
      t.string :make
      t.string :model
      t.integer :length
      t.integer :width
      t.integer :height
      t.string :fuel_type
      t.integer :capacity
      t.string :ammenities
      t.integer :current_mile
      t.bytea :image

      t.timestamps
    end
  end
end
