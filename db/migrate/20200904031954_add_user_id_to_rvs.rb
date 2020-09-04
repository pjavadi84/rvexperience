class AddUserIdToRvs < ActiveRecord::Migration[6.0]
  def change
    add_column :rvs, :user_id, :integer
  end
end
