# == Schema Information
#
# Table name: campaigns
#
#  id          :integer          not null, primary key
#  content     :integer          not null
#  finish_date :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  pay_id      :integer
#  shop_id     :integer
#
# Indexes
#
#  index_campaigns_on_pay_id   (pay_id)
#  index_campaigns_on_shop_id  (shop_id)
#
# Foreign Keys
#
#  pay_id   (pay_id => pays.id)
#  shop_id  (shop_id => shops.id)
#
class Campaign < ApplicationRecord
  belongs_to :shop, optional: true, foreign_key: 'shop_id'
  belongs_to :pay, foreign_key: 'pay_id'
end
