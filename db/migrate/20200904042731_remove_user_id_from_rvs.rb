class RemoveUserIdFromRvs < ActiveRecord::Migration[6.0]
  def change
    remove_column :rvs, :user_id, :integer
  end
end
