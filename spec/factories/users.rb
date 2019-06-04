FactoryBot.define do
  factory :user do
    nickname              { "たなち" }
    email                 { "kkk@gmail.com" }
    password              { "00000000" }
    password_confirmation { "00000000" }
    family_name           { "田中" }
    first_name            { "太郎" }
    family_name_kana      { "タナカ" }
    first_name_kana       { "タロウ" }
    birthday              { "19900101" }
    phone_number          { "00000000000" }
  end
end
