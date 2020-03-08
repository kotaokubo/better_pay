# == Schema Information
#
# Table name: shops
#
#  id         :integer          not null, primary key
#  category   :integer
#  count      :integer
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require 'test_helper'

class ShopTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
