FactoryBot.define do
  factory :snack do
    name { Faker::Food.fruits }
    price { Faker::Number.decimal(l_digits: 1, r_digits: 2) }
  end
end