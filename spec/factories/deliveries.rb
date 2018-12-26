# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :delivery do
    fee           "2"
    area          "1"
    delivery_days "3"
    item

  end
end
