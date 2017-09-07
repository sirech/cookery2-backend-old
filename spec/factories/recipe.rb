FactoryGirl.define do
  factory :recipe do
    name { Faker::Beer.name }
    servings { Faker::Number.between(1, 6) }
    difficulty { Recipe.difficulties.keys.sample }

    trait :with_categories do
      after(:build) do |recipe|
        count = Random.rand(3) + 1
        count.times { recipe.categories << FactoryGirl.build(:category) }
      end
    end

    trait :with_ingredients do
      after(:build) do |recipe|
        count = Random.rand(6) + 1
        count.times { recipe.quantities << FactoryGirl.build(:quantity) }
      end
    end

    trait :with_steps do
      after(:build) do |recipe|
        count = Random.rand(3) + 1
        count.times { recipe.steps << FactoryGirl.build(:step) }
      end
    end
  end
end
