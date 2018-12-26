# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :item do
    name                "デコイ"
    price                10000
    description         "デコイ"
    condition           "未使用に近い"
    brand_id               1
    association :seller,  factory: :user
    first_category
    second_category
    third_category
    size
    brand
  end
end
