class CreateItems < ActiveRecord::Migration[6.1]
  def change
    create_table :items do |t| 
      t.string :name
      t.string :category 
      t.integer :price
      t.boolean :isincart
    end
  end
end
