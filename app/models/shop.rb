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
class Shop < ApplicationRecord
  has_many :campaigns,->{order('content DESC')}, dependent: :destroy
  has_many :shop_search_counts, dependent: :destroy
  # これでバリデーションかけられる
  # todo errorMessageの出し方わからんから勉強する
  # validates :name, presence: true, length: {minimum: 1, message: "文字数が少なすぎます"}

  # クラスメソッドだと self が必要
  def self.search(name)
    if name
      Shop.where(['name LIKE ?', "%#{name}%"])
    else
      Shop.all
    end
  end

  def self.count

  end
end
