class AddBuyerIdToItems < ActiveRecord::Migration[6.1]
  def change
    add_column :items, :buyer_id, :string 
  end
end
