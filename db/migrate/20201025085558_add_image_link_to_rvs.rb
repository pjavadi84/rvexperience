class AddImageLinkToRvs < ActiveRecord::Migration[6.0]
  def change
    add_column :rvs, :image_link, :string
  end
end
