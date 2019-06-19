# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

ladies = Category.create(name: "レディース")
mens = Category.create(name: "メンズ")
interiors = Category.create(name: "インテリア・住まい・小物")

ladies_tops = ladies.children.create(name: "トップス")
ladies_pants = ladies.children.create(name: "パンツ")
mens_bags = mens.children.create(name: "バッグ")
mens_suits = mens.children.create(name: "スーツ")
interiors_kitchen = interiors.children.create(name: "キッチン/食器")
interiors_bed = interiors.children.create(name: "ベッド/マットレス")

ladies_tops.children.create([{name: "ポロシャツ"}, {name: "キャミソール"}])
ladies_pants.children.create([{name: "デニム/ジーンズ"}, {name: "ショートパンツ"}])
mens_bags.children.create([{name: "ショルダーバッグ"}, {name: "トートバッグ"}])
mens_suits.children.create([{name: "スーツジャケット"}, {name: "スラックス"}])
interiors_kitchen.children.create([{name: "食器"}, {name: "調理器具"}])
interiors_bed.children.create([{name: "シングルベッド"}, {name: "マットレス"}])

User.create!(nickname: "テストユーザー", email: "hogehoge@gmail.com", password: "hogehoge",first_name: "ユーザー",family_name:"テスト",family_name_kana:"テスト",first_name_kana:"ユーザー",birth_year:"2019",birth_month:"01",birth_day:"01")
user1 = User.find(1)

Item.create!([{
  name: "新品ワイドパンツ",
  price: "2280",
  item_condition: "目立った傷や汚れなし",
  delivery_fee: "送料込み(出品者負担)",
  shipping_date: "2~3日で発送",
  discription: "お値下げ致しました。新品のワイドパンツカーキです。",
  shipping_rule: "未定",
  prefecture_id: "1",
  status: "出品中",
  user_id: "1"},

  {name: "大塚愛 Tシャツ",
  price: "1500",
  item_condition: "新品、未使用",
  delivery_fee: "送料込み(出品者負担)",
  shipping_date: "1~2日で発送",
  discription: "オーガニックＴシャツです。撮影の為に、袋から出しました",
  shipping_rule: "未定",
  prefecture_id: "12",
  status: "出品中",
  user_id: "1"
  },

  {name: "ラルフローレン ポロシャツ レディース",
  price: "3000",
  item_condition: "新品、未使用",
  delivery_fee: "送料込み(出品者負担)",
  shipping_date: "1~2日で発送",
  discription: "セパレートタイプなので上下別々となっています！",
  shipping_rule: "未定",
  prefecture_id: "34",
  status: "出品中",
  user_id: "1"
  },

  {name: "レーヨンアサ ブラウス",
  price: "9244",
  item_condition: "目立った傷や汚れなし",
  delivery_fee: "送料込み(出品者負担)",
  shipping_date: "2~3日で発送",
  discription: "大人気で即完売だった商品です。
  新品未使用タグ付き。
  お探しだった方、ぜひ(*^^*)",
  shipping_rule: "未定",
  prefecture_id: "8",
  status: "出品中",
  user_id: "1"
  },

  {name: "５点まとめお得セット！",
  price: "2600",
  item_condition: "新品、未使用",
  delivery_fee: "送料込み(出品者負担)",
  shipping_date: "1~2日で発送",
  discription: "全品も状況が良いです",
  shipping_rule: "らくらくメルカリ便",
  prefecture_id: "14",
  status: "出品中",
  user_id: "1"
  },

  {name: "新品 未使用 フルーツカッター 便利",
  price: "1800",
  item_condition: "新品、未使用",
  delivery_fee: "送料込み(出品者負担)",
  shipping_date: "1~2日で発送",
  discription: "おまけに小さなピーラーをお付けします。",
  shipping_rule: "らくらくメルカリ便",
  prefecture_id: "30",
  status: "出品中",
  user_id: "1"
  },

  {name: "新品 ベッドマットレス Ｄ ブラック",
  price: "13000",
  item_condition: "新品、未使用",
  delivery_fee: "送料込み(出品者負担)",
  shipping_date: "1~2日で発送",
  discription: "値下げ不可",
  shipping_rule: "未定",
  prefecture_id: "4",
  status: "出品中",
  user_id: "1"
  },

  {name: "シングルベッド ダークブラウン",
  price: "19000",
  item_condition: "新品、未使用",
  delivery_fee: "送料込み(出品者負担)",
  shipping_date: "1~2日で発送",
  discription: "コンセント＆引き出し付きシングルベッドです",
  shipping_rule: "未定",
  prefecture_id: "3",
  status: "出品中",
  user_id: "1"
  },

  {name: "Eric’ｓdenimu デニム 36",
  price: "9800",
  item_condition: "新品、未使用",
  delivery_fee: "送料込み(出品者負担)",
  shipping_date: "1~2日で発送",
  discription: "代官山店で購入しました♡",
  shipping_rule: "未定",
  prefecture_id: "24",
  status: "出品中",
  user_id: "1"
  },

  {name: "平日セール 美品 ショルダーバッグ",
  price: "11011",
  item_condition: "目立った傷や汚れなし",
  delivery_fee: "送料込み(出品者負担)",
  shipping_date: "2~3日で発送",
  discription: "素人検品のためご理解頂ける方にお譲り致します。",
  shipping_rule: "らくらくメルカリ便",
  prefecture_id: "24",
  status: "出品中",
  user_id: "1"
  }])


item1 = Item.find(1)
item1.images.attach(io: File.open('public/images/test_image1.jpg'), filename: 'test_image1.jpg')

item2 = Item.find(2)
item2.images.attach(io: File.open('public/images/test_image2.jpg'), filename: 'test_image2.jpg')

item3 = Item.find(3)
item3.images.attach(io: File.open('public/images/test_image3.jpg'), filename: 'test_image3.jpg')

item4 = Item.find(4)
item4.images.attach(io: File.open('public/images/test_image4.jpg'), filename: 'test_image4.jpg')

item5 = Item.find(5)
item5.images.attach(io: File.open('public/images/test_image5.jpg'), filename: 'test_image5.jpg')

item6 = Item.find(6)
item6.images.attach(io: File.open('public/images/test_image6.jpg'), filename: 'test_image6.jpg')

item7 = Item.find(7)
item7.images.attach(io: File.open('public/images/test_image7.jpg'), filename: 'test_image7.jpg')

item8 = Item.find(8)
item8.images.attach(io: File.open('public/images/test_image8.jpg'), filename: 'test_image8.jpg')
 
item9 = Item.find(9)
item9.images.attach(io: File.open('public/images/test_image9.jpg'), filename: 'test_image9.jpg')

item10 = Item.find(10)
item10.images.attach(io: File.open('public/images/test_image10.jpg'), filename: 'test_image10.jpg')

ItemsCategory.create!([{
  item_id:"1",
  category_id:"13",
  },

  {
  item_id:"2",
  category_id:"10",
  },

  {
  item_id:"3",
  category_id:"10",
  },

  {
  item_id:"4",
  category_id:"11",
  },

  {
  item_id:"5",
  category_id:"18",
  },

  {
  item_id:"6",
  category_id:"19",
  },

  {
  item_id:"7",
  category_id:"21",
  },

  {
  item_id:"8",
  category_id:"20",
  },

  {
  item_id:"9",
  category_id:"12",
  },

  {
  item_id:"10",
  category_id:"15",
  }])