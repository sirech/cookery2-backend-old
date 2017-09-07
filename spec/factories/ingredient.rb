FactoryGirl.define do
  factory :ingredient do
    name { Faker::Hipster.sentence(2, false, 2) }
  end
end
