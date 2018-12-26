# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :second_category do
    name             "トップス"
    first_category
  end
end
