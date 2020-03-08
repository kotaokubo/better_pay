class ChangeDataContentToCampaigns < ActiveRecord::Migration[6.0]
  def change
    change_column :campaigns, :content, 'integer USING CAST(content AS integer)'
  end
end
