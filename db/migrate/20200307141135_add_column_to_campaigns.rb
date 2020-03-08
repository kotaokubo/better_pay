class AddColumnToCampaigns < ActiveRecord::Migration[6.0]
  def change
    add_column :campaigns, :finish_date, :string
  end
end
