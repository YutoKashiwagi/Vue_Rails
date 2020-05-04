FactoryBot.define do
  factory :tweet do
    sequence(:content) { |n| "test#{n}"}
  end
end
