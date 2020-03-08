class CreateShopSearchCounts < ActiveRecord::Migration[6.0]
  def change
    create_table :shop_search_counts do |t|
      t.references :shop, foreign_key:true
      t.integer :count

      t.timestamps
    end
  end
end
