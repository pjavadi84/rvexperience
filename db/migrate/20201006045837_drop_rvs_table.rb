class DropRvsTable < ActiveRecord::Migration[6.0]
  def up
    drop_table :rvs
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
