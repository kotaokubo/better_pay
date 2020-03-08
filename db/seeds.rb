# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#
#  ただし、既存のデータに対する追加のため、基本はマスターデータの変更以外は使わなさそう

# 「rails db:seed」 のコマンドで、seed.rbのクエリが実行される。
# seed.rbが実行されるとseedFuが実行される
#
SeedFu.seed

# herokuデプロイの場合
# heroku run rails db:seed_fu FILTER=shop --app better-pay1
# heroku run rails db:seed_fu FILTER=pay --app better-pay1
# heroku run rails db:seed_fu FILTER=campaign --app better-pay1
# の順番にやらないと、campaignの外部キーエラーになる。
