# == Schema Information
#
# Table name: pays
#
#  id         :integer          not null, primary key
#  name       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Pay < ApplicationRecord
  has_many :campaigns, dependent: :destroy
end
