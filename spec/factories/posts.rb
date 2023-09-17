FactoryBot.define do
  factory :post do
    content { "Post content" }
    user
  end
end