FactoryBot.define do
  factory :comment do
    body { "Comment body" }
    user
  end
end