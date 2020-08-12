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
      t.boolean :air_conditioner
      t.boolean :jacuzzi
      t.boolean :shower
      t.boolean :washer_dryer
      t.boolean :internet
      t.integer :current_mile
      t.binary :image

      t.timestamps
    end
  end
end
