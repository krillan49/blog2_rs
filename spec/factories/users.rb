FactoryBot.define do
  factory :user do
    sequence(:email) { |n| "user#{n}@mail.ru" }
    sequence(:username) { |n| "username#{n}" }
    password { "123456" }
  end
end