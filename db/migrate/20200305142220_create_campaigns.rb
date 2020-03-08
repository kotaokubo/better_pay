class CreateCampaigns < ActiveRecord::Migration[6.0]
  def change
    create_table :campaigns do |t|
      t.references :shop, foreign_key: true
      t.references :pay, foreign_key: true
      t.text :content, null: false
      t.timestamps
    end
  end
end