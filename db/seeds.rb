# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

ladies = Category.create(name: "レディース")
ladies_tops = ladies.children.create(name: "トップス")
ladies_pants = ladies.children.create(name: "パンツ")
ladies_tops.children.create([{name: "ポロシャツ"}, {name: "キャミソール"}])
ladies_pants.children.create([{name: "デニム/ジーンズ"}, {name: "ショートパンツ"}])

mens = Category.create(name: "メンズ")
mens_tops = mens.children.create(name: "トップス")
mens_pants = mens.children.create(name: "パンツ")
mens_tops.children.create([{name: "シャツ"}, {name: "ポロシャツ"}])
mens_pants.children.create([{name: "スラックス"}, {name: "チノパン"}])

Item.create!([{name: "ラルフローレン ポロシャツ レディース",
            price: "1500",
            item_condition: "目立った傷や汚れなし",
            delivery_fee: "送料込み(出品者負担)",
            shipping_date: "2~3日で発送",
            discription: "ラルフローレンのポロシャツです。",
            shipping_rule: "未定",
            prefecture_id: "1",
            status: "出品中",
            user_id: "1"
            },

            {name: "ラルフローレン ポロシャツ レディース",
            price: "1500",
            item_condition: "目立った傷や汚れなし",
            delivery_fee: "送料込み(出品者負担)",
            shipping_date: "2~3日で発送",
            discription: "ラルフローレンのポロシャツです。",
            shipping_rule: "未定",
            prefecture_id: "1",
            status: "出品中",
            user_id: "1"
            },

            {name: "ラルフローレン ポロシャツ レディース",
            price: "1500",
            item_condition: "目立った傷や汚れなし",
            delivery_fee: "送料込み(出品者負担)",
            shipping_date: "2~3日で発送",
            discription: "ラルフローレンのポロシャツです。",
            shipping_rule: "未定",
            prefecture_id: "1",
            status: "出品中",
            user_id: "1"
            },

            {name: "ラルフローレン ポロシャツ レディース",
            price: "1500",
            item_condition: "目立った傷や汚れなし",
            delivery_fee: "送料込み(出品者負担)",
            shipping_date: "2~3日で発送",
            discription: "ラルフローレンのポロシャツです。",
            shipping_rule: "未定",
            prefecture_id: "1",
            status: "出品中",
            user_id: "1"
            }])