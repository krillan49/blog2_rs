FactoryBot.define do
  factory :user do
    email { "user@mail.ru" }
    username { "username" }
    password { "123456" }
  end
end