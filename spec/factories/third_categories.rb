# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :third_category do
    name                "シャツ/ブラウス"
    second_category
  end
end
