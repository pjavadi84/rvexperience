class CreateDestinations < ActiveRecord::Migration[6.0]
  def change
    create_table :destinations do |t|
      t.string :weather_condition
      t.string :geography
      t.string :address
      t.string :city
      t.string :state 
      t.integer :zipcode
      t.integer :capacity
      t.boolean :shower
      t.boolean :restroom
      t.boolean :internet
      t.boolean :kid_friendly
      t.integer :physical_demand
      t.binary :image
      t.integer :phone_number

      t.timestamps
    end
  end
end
