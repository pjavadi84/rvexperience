class AddRvIdToComments < ActiveRecord::Migration[6.0]
  def change
    add_column :comments, :rv_id, :integer
  end
end
