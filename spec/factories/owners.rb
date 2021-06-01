FactoryBot.define do
  factory :owner do
    name { Faker::Company.name}
  end
end