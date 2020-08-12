class CreateCompanies < ActiveRecord::Migration[6.0]
  def change
    create_table :companies do |t|
      t.string :name 
      t.string :address
      t.string :city
      t.string :state
      t.integer :zipcode
      t.integer :phone_number 
      t.integer :business_open
      t.integer :business_close
      t.string :opearting_days
      t.binary :picture
      t.binary :logo

      t.timestamps
    end
  end
end
