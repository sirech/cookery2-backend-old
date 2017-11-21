FactoryGirl.define do
  factory :step do
    description { Faker::Yoda.quote }
    duration { Faker::Number.between(15, 90) }

    trait :composite do
      recipe { FactoryGirl.create(:recipe) }
    end
  end
end
