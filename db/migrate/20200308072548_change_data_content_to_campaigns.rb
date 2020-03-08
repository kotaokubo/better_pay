class ChangeDataContentToCampaigns < ActiveRecord::Migration[6.0]
  def change
    change_column :campaigns, :content, :integer
  end
end
