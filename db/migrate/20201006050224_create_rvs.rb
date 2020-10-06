class CreateRvs < ActiveRecord::Migration[6.0]
  def change
    create_table :rvs do |t|
      t.references :company, foreign_key: true

      t.timestamps
    end
  end
end
