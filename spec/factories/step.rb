FactoryGirl.define do
  factory :step do
    description { Faker::Yoda.quote }

    trait :composite do
      recipe { FactoryGirl.create(:recipe) }
    end
  end
end
