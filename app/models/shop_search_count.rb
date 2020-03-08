# == Schema Information
#
# Table name: shop_search_counts
#
#  id         :integer          not null, primary key
#  count      :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  shop_id    :integer
#
# Indexes
#
#  index_shop_search_counts_on_shop_id  (shop_id)
#
# Foreign Keys
#
#  shop_id  (shop_id => shops.id)
#
class ShopSearchCount < ApplicationRecord
  belongs_to :shop
end
