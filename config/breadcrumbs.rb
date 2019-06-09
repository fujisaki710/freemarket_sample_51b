crumb :root do
  link "メルカリ", root_path
end

crumb :item do
  link "アイテム", issues_path
end
crumb :item do |item|
  link item.name, item_path
  parent :root
end

crumb :mypage do
  link "マイページ"
  parent :root
end

crumb :user do
  link "本人情報の登録"
  parent :mypage
end

crumb :brand do
  link "ブランド一覧"
  parent :root
end

crumb :profile do
  link "プロフィール", profile_user_path
  parent :mypage
end

crumb :logout do
  link "ログアウト"
  parent :mypage
end

crumb :credit do
  link "支払い方法"
  parent :mypage
end
